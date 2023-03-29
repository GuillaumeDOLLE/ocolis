-- Revert ocolis:1.create_table from pg

BEGIN;

DROP TABLE IF EXISTS place, package;

COMMIT;
