BEGIN;

-- 1. je renomme volume en height
ALTER TABLE package
RENAME COLUMN "volume" TO "height";

-- 2. j'ajoute deux colonnes
ALTER TABLE package
ADD COLUMN "width" INT NOT NULL DEFAULT 1,
ADD COLUMN "depth" INT NOT NULL DEFAULT(1);

COMMIT;