-- Revert ocolis:3.serial_number_unique from pg

BEGIN;

ALTER TABLE IF EXISTS public."package" DROP CONSTRAINT IF EXISTS package_serial_number_key;

COMMIT;
