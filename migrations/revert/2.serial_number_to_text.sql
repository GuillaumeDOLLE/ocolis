-- Revert ocolis:2.serial_number_to_text from pg

BEGIN;

ALTER TABLE package
    ALTER COLUMN serial_number TYPE int USING serial_number::integer;

COMMIT;
