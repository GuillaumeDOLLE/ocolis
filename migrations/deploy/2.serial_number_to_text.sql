-- Deploy ocolis:2.serial_number_to_text to pg

BEGIN;

ALTER TABLE package
    ALTER COLUMN serial_number TYPE text;


COMMIT;
