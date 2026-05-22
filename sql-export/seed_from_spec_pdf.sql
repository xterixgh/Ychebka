-- Seed data based on specification document:
-- "Спецификации для изготовления барабана сварного"

BEGIN;

-- 1) Equipment types
INSERT INTO "EquipmentType" ("TypeName") VALUES
('полуавтомат сварочный'),
('станок ленточно-пильный'),
('токарно-винторезный станок'),
('кругло-шлифовальный станок'),
('вертикально-фрезерный станок'),
('расточной станок'),
('станок плазменной резки'),
('горизонтально-протяжной станок')
ON CONFLICT ("TypeName") DO NOTHING;

-- 2) Minimal equipment instances (one per type)
INSERT INTO "Equipment" ("Marking", "IdEquipmentType", "Characteristics")
SELECT 'EQ-WELD-01', et."IdEquipmentType", 'Автосоздано из спецификации'
FROM "EquipmentType" et WHERE et."TypeName" = 'полуавтомат сварочный'
ON CONFLICT ("Marking") DO NOTHING;

INSERT INTO "Equipment" ("Marking", "IdEquipmentType", "Characteristics")
SELECT 'EQ-BANDSAW-01', et."IdEquipmentType", 'Автосоздано из спецификации'
FROM "EquipmentType" et WHERE et."TypeName" = 'станок ленточно-пильный'
ON CONFLICT ("Marking") DO NOTHING;

INSERT INTO "Equipment" ("Marking", "IdEquipmentType", "Characteristics")
SELECT 'EQ-LATHE-01', et."IdEquipmentType", 'Автосоздано из спецификации'
FROM "EquipmentType" et WHERE et."TypeName" = 'токарно-винторезный станок'
ON CONFLICT ("Marking") DO NOTHING;

INSERT INTO "Equipment" ("Marking", "IdEquipmentType", "Characteristics")
SELECT 'EQ-GRIND-01', et."IdEquipmentType", 'Автосоздано из спецификации'
FROM "EquipmentType" et WHERE et."TypeName" = 'кругло-шлифовальный станок'
ON CONFLICT ("Marking") DO NOTHING;

INSERT INTO "Equipment" ("Marking", "IdEquipmentType", "Characteristics")
SELECT 'EQ-MILL-01', et."IdEquipmentType", 'Автосоздано из спецификации'
FROM "EquipmentType" et WHERE et."TypeName" = 'вертикально-фрезерный станок'
ON CONFLICT ("Marking") DO NOTHING;

INSERT INTO "Equipment" ("Marking", "IdEquipmentType", "Characteristics")
SELECT 'EQ-BORE-01', et."IdEquipmentType", 'Автосоздано из спецификации'
FROM "EquipmentType" et WHERE et."TypeName" = 'расточной станок'
ON CONFLICT ("Marking") DO NOTHING;

INSERT INTO "Equipment" ("Marking", "IdEquipmentType", "Characteristics")
SELECT 'EQ-PLASMA-01', et."IdEquipmentType", 'Автосоздано из спецификации'
FROM "EquipmentType" et WHERE et."TypeName" = 'станок плазменной резки'
ON CONFLICT ("Marking") DO NOTHING;

INSERT INTO "Equipment" ("Marking", "IdEquipmentType", "Characteristics")
SELECT 'EQ-BROACH-01', et."IdEquipmentType", 'Автосоздано из спецификации'
FROM "EquipmentType" et WHERE et."TypeName" = 'горизонтально-протяжной станок'
ON CONFLICT ("Marking") DO NOTHING;

-- 3) Products from PDF hierarchy
INSERT INTO "Product" ("ProductName", "DimensionsText")
VALUES
('Барабан сварной', 'Размеры уточняются'),
('Обечайка', 'Размеры уточняются'),
('Вал', 'Размеры уточняются'),
('Набор шпонок', 'Размеры уточняются'),
('Набор дисков сварных', 'Размеры уточняются'),
('Набор ребер', 'Размеры уточняются'),
('Диск', 'Размеры уточняются'),
('Ступица', 'Размеры уточняются')
ON CONFLICT DO NOTHING;

-- 4) Product structure (SpecAssemblyUnit)
-- Барабан сварной -> Обечайка, Вал, Набор шпонок, Набор дисков сварных
INSERT INTO "SpecAssemblyUnit" ("IdProduct", "IdChildProduct", "Quantity")
SELECT p_parent."IdProduct", p_child."IdProduct", 1
FROM "Product" p_parent, "Product" p_child
WHERE p_parent."ProductName" = 'Барабан сварной' AND p_child."ProductName" = 'Обечайка'
ON CONFLICT ("IdProduct","IdChildProduct") DO NOTHING;

INSERT INTO "SpecAssemblyUnit" ("IdProduct", "IdChildProduct", "Quantity")
SELECT p_parent."IdProduct", p_child."IdProduct", 1
FROM "Product" p_parent, "Product" p_child
WHERE p_parent."ProductName" = 'Барабан сварной' AND p_child."ProductName" = 'Вал'
ON CONFLICT ("IdProduct","IdChildProduct") DO NOTHING;

INSERT INTO "SpecAssemblyUnit" ("IdProduct", "IdChildProduct", "Quantity")
SELECT p_parent."IdProduct", p_child."IdProduct", 1
FROM "Product" p_parent, "Product" p_child
WHERE p_parent."ProductName" = 'Барабан сварной' AND p_child."ProductName" = 'Набор шпонок'
ON CONFLICT ("IdProduct","IdChildProduct") DO NOTHING;

INSERT INTO "SpecAssemblyUnit" ("IdProduct", "IdChildProduct", "Quantity")
SELECT p_parent."IdProduct", p_child."IdProduct", 1
FROM "Product" p_parent, "Product" p_child
WHERE p_parent."ProductName" = 'Барабан сварной' AND p_child."ProductName" = 'Набор дисков сварных'
ON CONFLICT ("IdProduct","IdChildProduct") DO NOTHING;

-- Набор дисков сварных -> Набор ребер, Диск, Ступица
INSERT INTO "SpecAssemblyUnit" ("IdProduct", "IdChildProduct", "Quantity")
SELECT p_parent."IdProduct", p_child."IdProduct", 1
FROM "Product" p_parent, "Product" p_child
WHERE p_parent."ProductName" = 'Набор дисков сварных' AND p_child."ProductName" = 'Набор ребер'
ON CONFLICT ("IdProduct","IdChildProduct") DO NOTHING;

INSERT INTO "SpecAssemblyUnit" ("IdProduct", "IdChildProduct", "Quantity")
SELECT p_parent."IdProduct", p_child."IdProduct", 1
FROM "Product" p_parent, "Product" p_child
WHERE p_parent."ProductName" = 'Набор дисков сварных' AND p_child."ProductName" = 'Диск'
ON CONFLICT ("IdProduct","IdChildProduct") DO NOTHING;

INSERT INTO "SpecAssemblyUnit" ("IdProduct", "IdChildProduct", "Quantity")
SELECT p_parent."IdProduct", p_child."IdProduct", 1
FROM "Product" p_parent, "Product" p_child
WHERE p_parent."ProductName" = 'Набор дисков сварных' AND p_child."ProductName" = 'Ступица'
ON CONFLICT ("IdProduct","IdChildProduct") DO NOTHING;

-- 5) Materials in specification (N values are set as 1 for testing)
INSERT INTO "SpecMaterial" ("IdProduct", "IdMaterial", "Quantity")
SELECT p."IdProduct", m."IdMaterial", 10
FROM "Product" p, "Material" m
WHERE p."ProductName" = 'Барабан сварной' AND m."MaterialName" ILIKE '%электрод%'
ON CONFLICT ("IdProduct","IdMaterial") DO NOTHING;

INSERT INTO "SpecMaterial" ("IdProduct", "IdMaterial", "Quantity")
SELECT p."IdProduct", m."IdMaterial", 5
FROM "Product" p, "Material" m
WHERE p."ProductName" = 'Набор дисков сварных' AND m."MaterialName" ILIKE '%электрод%'
ON CONFLICT ("IdProduct","IdMaterial") DO NOTHING;

-- 6) Operations (SpecOperation)
INSERT INTO "SpecOperation" ("IdProduct","OperationName","SequenceNo","IdEquipmentType","OperationMinutes")
SELECT p."IdProduct",'Сборочно-сварочная',1,et."IdEquipmentType",90
FROM "Product" p, "EquipmentType" et
WHERE p."ProductName"='Барабан сварной' AND et."TypeName"='полуавтомат сварочный'
ON CONFLICT ("IdProduct","SequenceNo") DO NOTHING;

INSERT INTO "SpecOperation" ("IdProduct","OperationName","SequenceNo","IdEquipmentType","OperationMinutes")
SELECT p."IdProduct",'Отрезная',1,et."IdEquipmentType",30
FROM "Product" p, "EquipmentType" et
WHERE p."ProductName"='Обечайка' AND et."TypeName"='станок ленточно-пильный'
ON CONFLICT ("IdProduct","SequenceNo") DO NOTHING;

INSERT INTO "SpecOperation" ("IdProduct","OperationName","SequenceNo","IdEquipmentType","OperationMinutes")
SELECT p."IdProduct",'Отрезная',1,et."IdEquipmentType",20
FROM "Product" p, "EquipmentType" et
WHERE p."ProductName"='Вал' AND et."TypeName"='станок ленточно-пильный'
ON CONFLICT ("IdProduct","SequenceNo") DO NOTHING;

INSERT INTO "SpecOperation" ("IdProduct","OperationName","SequenceNo","IdEquipmentType","OperationMinutes")
SELECT p."IdProduct",'Токарная',2,et."IdEquipmentType",120
FROM "Product" p, "EquipmentType" et
WHERE p."ProductName"='Вал' AND et."TypeName"='токарно-винторезный станок'
ON CONFLICT ("IdProduct","SequenceNo") DO NOTHING;

INSERT INTO "SpecOperation" ("IdProduct","OperationName","SequenceNo","IdEquipmentType","OperationMinutes")
SELECT p."IdProduct",'Шлифовальная',3,et."IdEquipmentType",30
FROM "Product" p, "EquipmentType" et
WHERE p."ProductName"='Вал' AND et."TypeName"='кругло-шлифовальный станок'
ON CONFLICT ("IdProduct","SequenceNo") DO NOTHING;

INSERT INTO "SpecOperation" ("IdProduct","OperationName","SequenceNo","IdEquipmentType","OperationMinutes")
SELECT p."IdProduct",'Фрезерная',4,et."IdEquipmentType",20
FROM "Product" p, "EquipmentType" et
WHERE p."ProductName"='Вал' AND et."TypeName"='вертикально-фрезерный станок'
ON CONFLICT ("IdProduct","SequenceNo") DO NOTHING;

INSERT INTO "SpecOperation" ("IdProduct","OperationName","SequenceNo","IdEquipmentType","OperationMinutes")
SELECT p."IdProduct",'Сверлильная',5,et."IdEquipmentType",10
FROM "Product" p, "EquipmentType" et
WHERE p."ProductName"='Вал' AND et."TypeName"='расточной станок'
ON CONFLICT ("IdProduct","SequenceNo") DO NOTHING;

INSERT INTO "SpecOperation" ("IdProduct","OperationName","SequenceNo","IdEquipmentType","OperationMinutes")
SELECT p."IdProduct",'Отрезная',1,et."IdEquipmentType",10
FROM "Product" p, "EquipmentType" et
WHERE p."ProductName"='Набор шпонок' AND et."TypeName"='станок ленточно-пильный'
ON CONFLICT ("IdProduct","SequenceNo") DO NOTHING;

INSERT INTO "SpecOperation" ("IdProduct","OperationName","SequenceNo","IdEquipmentType","OperationMinutes")
SELECT p."IdProduct",'Сборочно-сварочная',1,et."IdEquipmentType",40
FROM "Product" p, "EquipmentType" et
WHERE p."ProductName"='Набор дисков сварных' AND et."TypeName"='полуавтомат сварочный'
ON CONFLICT ("IdProduct","SequenceNo") DO NOTHING;

INSERT INTO "SpecOperation" ("IdProduct","OperationName","SequenceNo","IdEquipmentType","OperationMinutes")
SELECT p."IdProduct",'Отрезная',1,et."IdEquipmentType",10
FROM "Product" p, "EquipmentType" et
WHERE p."ProductName"='Набор ребер' AND et."TypeName"='станок ленточно-пильный'
ON CONFLICT ("IdProduct","SequenceNo") DO NOTHING;

INSERT INTO "SpecOperation" ("IdProduct","OperationName","SequenceNo","IdEquipmentType","OperationMinutes")
SELECT p."IdProduct",'Заготовительная',1,et."IdEquipmentType",20
FROM "Product" p, "EquipmentType" et
WHERE p."ProductName"='Диск' AND et."TypeName"='станок плазменной резки'
ON CONFLICT ("IdProduct","SequenceNo") DO NOTHING;

INSERT INTO "SpecOperation" ("IdProduct","OperationName","SequenceNo","IdEquipmentType","OperationMinutes")
SELECT p."IdProduct",'Токарная',2,et."IdEquipmentType",20
FROM "Product" p, "EquipmentType" et
WHERE p."ProductName"='Диск' AND et."TypeName"='токарно-винторезный станок'
ON CONFLICT ("IdProduct","SequenceNo") DO NOTHING;

INSERT INTO "SpecOperation" ("IdProduct","OperationName","SequenceNo","IdEquipmentType","OperationMinutes")
SELECT p."IdProduct",'Отрезная',1,et."IdEquipmentType",20
FROM "Product" p, "EquipmentType" et
WHERE p."ProductName"='Ступица' AND et."TypeName"='станок ленточно-пильный'
ON CONFLICT ("IdProduct","SequenceNo") DO NOTHING;

INSERT INTO "SpecOperation" ("IdProduct","OperationName","SequenceNo","IdEquipmentType","OperationMinutes")
SELECT p."IdProduct",'Токарная',2,et."IdEquipmentType",60
FROM "Product" p, "EquipmentType" et
WHERE p."ProductName"='Ступица' AND et."TypeName"='токарно-винторезный станок'
ON CONFLICT ("IdProduct","SequenceNo") DO NOTHING;

INSERT INTO "SpecOperation" ("IdProduct","OperationName","SequenceNo","IdEquipmentType","OperationMinutes")
SELECT p."IdProduct",'Протяжная',3,et."IdEquipmentType",10
FROM "Product" p, "EquipmentType" et
WHERE p."ProductName"='Ступица' AND et."TypeName"='горизонтально-протяжной станок'
ON CONFLICT ("IdProduct","SequenceNo") DO NOTHING;

COMMIT;
