-- SQLBook: Code
-- Revert ocolis:5.tracking from pg

BEGIN;

ALTER TABLE package
    DROP COLUMN request_time timestamptz NOT NULL DEFAULT now(),
    ADD COLUMN expedition_time timestamptz,
    ADD COLUMN delivered_time timestamptz;

COMMIT;

-- SQLBook: Code

-- SQLBook: Code
-- Revert ocolis:5.tracking from pg

BEGIN;

ALTER TABLE package
    DROP COLUMN request_time timestamptz NOT NULL DEFAULT now(),
    ADD COLUMN expedition_time timestamptz,
    ADD COLUMN delivered_time timestamptz;

COMMIT;

-- SQLBook: Code
