-- Revert ocolis:4.volume from pg

BEGIN;

ALTER TABLE package
RENAME COLUMN "height" TO "volume";

UPDATE package SET
    volume = volume * width * depth;

ALTER TABLE package
DROP COLUMN "width",
DROP COLUMN "depth";

COMMIT;
