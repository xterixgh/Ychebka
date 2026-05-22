BEGIN;

CREATE TABLE IF NOT EXISTS "Worker" (
    "IdWorker" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "IdUserAccount" int NOT NULL UNIQUE,
    "BirthDate" date NOT NULL,
    "HomeAddress" text NOT NULL,
    "Education" varchar(255) NOT NULL,
    "Qualification" varchar(255) NOT NULL,
    CONSTRAINT "FK_Worker_UserAccount"
        FOREIGN KEY ("IdUserAccount") REFERENCES "UserAccount"("IdUserAccount")
        ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "ProductionOperation" (
    "IdProductionOperation" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "OperationName" varchar(255) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS "WorkerOperation" (
    "IdWorkerOperation" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "IdWorker" int NOT NULL,
    "IdProductionOperation" int NOT NULL,
    CONSTRAINT "FK_WorkerOperation_Worker"
        FOREIGN KEY ("IdWorker") REFERENCES "Worker"("IdWorker")
        ON DELETE CASCADE,
    CONSTRAINT "FK_WorkerOperation_ProductionOperation"
        FOREIGN KEY ("IdProductionOperation") REFERENCES "ProductionOperation"("IdProductionOperation")
        ON DELETE CASCADE,
    CONSTRAINT "UQ_WorkerOperation_Worker_Operation" UNIQUE ("IdWorker", "IdProductionOperation")
);

CREATE INDEX IF NOT EXISTS "IX_WorkerOperation_IdWorker" ON "WorkerOperation" ("IdWorker");
CREATE INDEX IF NOT EXISTS "IX_WorkerOperation_IdProductionOperation" ON "WorkerOperation" ("IdProductionOperation");

COMMIT;
