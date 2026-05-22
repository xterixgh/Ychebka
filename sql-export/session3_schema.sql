BEGIN;

ALTER TABLE "SpecOperation"
    ADD COLUMN IF NOT EXISTS "OperationDescription" text;

CREATE TABLE IF NOT EXISTS "ProductDrawing" (
    "IdProductDrawing" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "IdProduct" int NOT NULL,
    "FileName" varchar(255) NOT NULL,
    "FileData" bytea NOT NULL,
    CONSTRAINT "FK_ProductDrawing_Product"
        FOREIGN KEY ("IdProduct") REFERENCES "Product"("IdProduct")
        ON DELETE CASCADE
);

COMMIT;
