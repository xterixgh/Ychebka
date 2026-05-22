-- Заполнение Worker / ProductionOperation / WorkerOperation
-- для существующих пользователей с ролями Мастер и Конструктор.
-- Безопасно запускать повторно (пропускает уже заполненные записи).

BEGIN;

-- 1) Справочник операций из SpecOperation
INSERT INTO "ProductionOperation" ("OperationName")
SELECT DISTINCT TRIM("OperationName")
FROM "SpecOperation"
WHERE TRIM("OperationName") <> ''
ON CONFLICT ("OperationName") DO NOTHING;

-- Запасная операция, если SpecOperation пустой
INSERT INTO "ProductionOperation" ("OperationName")
VALUES ('Общая производственная операция')
ON CONFLICT ("OperationName") DO NOTHING;

-- 2) Карточки работников (заглушки для полей пункта 1.5)
INSERT INTO "Worker" (
    "IdUserAccount",
    "BirthDate",
    "HomeAddress",
    "Education",
    "Qualification"
)
SELECT
    u."IdUserAccount",
    DATE '1990-01-01' + ((u."IdUserAccount" % 5000) * INTERVAL '1 day'),
    'Адрес не указан',
    CASE
        WHEN r."RoleName" = 'Конструктор' THEN 'Высшее'
        ELSE 'Среднее специальное'
    END,
    CASE
        WHEN r."RoleName" = 'Конструктор' THEN 'Конструктор'
        ELSE 'Мастер производства'
    END
FROM "UserAccount" u
JOIN "UserRole" r ON u."IdUserRole" = r."IdUserRole"
WHERE r."RoleName" IN ('Мастер', 'Конструктор')
  AND NOT EXISTS (
      SELECT 1
      FROM "Worker" w
      WHERE w."IdUserAccount" = u."IdUserAccount"
  );

-- 3) По одной операции на каждого работника (распределение по кругу)
INSERT INTO "WorkerOperation" ("IdWorker", "IdProductionOperation")
SELECT
    w."IdWorker",
    op."IdProductionOperation"
FROM "Worker" w
JOIN LATERAL (
    SELECT p."IdProductionOperation"
    FROM "ProductionOperation" p
    ORDER BY p."IdProductionOperation"
    OFFSET ((w."IdWorker" - 1) % GREATEST((SELECT COUNT(*)::int FROM "ProductionOperation"), 1))
    LIMIT 1
) op ON TRUE
WHERE NOT EXISTS (
    SELECT 1
    FROM "WorkerOperation" wo
    WHERE wo."IdWorker" = w."IdWorker"
);

COMMIT;
