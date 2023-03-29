-- Deploy ocolis:3.serial_number_unique to pg

BEGIN;

ALTER TABLE package
    ADD UNIQUE(serial_number);

COMMIT;
