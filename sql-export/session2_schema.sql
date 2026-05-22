BEGIN;

ALTER TABLE "Order"
    ADD COLUMN IF NOT EXISTS "Status" varchar(50) NOT NULL DEFAULT 'Новый';

ALTER TABLE "Order"
    ADD COLUMN IF NOT EXISTS "RejectReason" text;

ALTER TABLE "Order"
    ADD COLUMN IF NOT EXISTS "ProductDescription" text;

ALTER TABLE "Order"
    ADD COLUMN IF NOT EXISTS "OrderQuantity" numeric(18, 3) NOT NULL DEFAULT 1;

CREATE TABLE IF NOT EXISTS "OrderSize" (
    "IdOrderSize" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "IdOrder" int NOT NULL,
    "SizeName" varchar(100) NOT NULL,
    "SizeValue" numeric(18, 3) NOT NULL,
    "UnitName" varchar(50) NOT NULL,
    CONSTRAINT "FK_OrderSize_Order"
        FOREIGN KEY ("IdOrder") REFERENCES "Order"("IdOrder")
        ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "OrderStatusHistory" (
    "IdOrderStatusHistory" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "IdOrder" int NOT NULL,
    "OldStatus" varchar(50),
    "NewStatus" varchar(50) NOT NULL,
    "ChangedAt" timestamp NOT NULL DEFAULT NOW(),
    "IdChangedByUser" int,
    CONSTRAINT "FK_OrderStatusHistory_Order"
        FOREIGN KEY ("IdOrder") REFERENCES "Order"("IdOrder")
        ON DELETE CASCADE,
    CONSTRAINT "FK_OrderStatusHistory_User"
        FOREIGN KEY ("IdChangedByUser") REFERENCES "UserAccount"("IdUserAccount")
        ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS "EquipmentFailure" (
    "IdEquipmentFailure" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "IdEquipment" int NOT NULL,
    "FailureStart" timestamp NOT NULL,
    "FailureEnd" timestamp,
    "FailureReason" varchar(255) NOT NULL,
    "IdMasterUser" int NOT NULL,
    CONSTRAINT "FK_EquipmentFailure_Equipment"
        FOREIGN KEY ("IdEquipment") REFERENCES "Equipment"("IdEquipment")
        ON DELETE RESTRICT,
    CONSTRAINT "FK_EquipmentFailure_User"
        FOREIGN KEY ("IdMasterUser") REFERENCES "UserAccount"("IdUserAccount")
        ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS "OrderQualityCheck" (
    "IdOrderQualityCheck" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "IdOrder" int NOT NULL,
    "ParameterName" varchar(255) NOT NULL,
    "GradeSign" varchar(1) NOT NULL,
    "CommentText" text,
    "CheckedAt" timestamp NOT NULL DEFAULT NOW(),
    "IdMasterUser" int NOT NULL,
    CONSTRAINT "FK_OrderQualityCheck_Order"
        FOREIGN KEY ("IdOrder") REFERENCES "Order"("IdOrder")
        ON DELETE CASCADE,
    CONSTRAINT "FK_OrderQualityCheck_User"
        FOREIGN KEY ("IdMasterUser") REFERENCES "UserAccount"("IdUserAccount")
        ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS "Workshop" (
    "IdWorkshop" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "WorkshopName" varchar(255) NOT NULL UNIQUE,
    "PlanImage" bytea NOT NULL
);

CREATE TABLE IF NOT EXISTS "WorkshopPlanItem" (
    "IdWorkshopPlanItem" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "IdWorkshop" int NOT NULL,
    "IconType" varchar(50) NOT NULL,
    "PosX" numeric(18, 2) NOT NULL,
    "PosY" numeric(18, 2) NOT NULL,
    CONSTRAINT "FK_WorkshopPlanItem_Workshop"
        FOREIGN KEY ("IdWorkshop") REFERENCES "Workshop"("IdWorkshop")
        ON DELETE CASCADE
);

COMMIT;
