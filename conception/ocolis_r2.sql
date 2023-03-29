BEGIN;

-- attention changer le type d'une colonne peut supprimer toutes les valeurs de la table
ALTER TABLE package
    ALTER COLUMN serial_number TYPE text;

COMMIT;