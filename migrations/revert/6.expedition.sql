-- Revert ocolis:6.expedition from pg

BEGIN;

-- remettre la colonne expedition_time dans package
ALTER TABLE public."package"
    ADD COLUMN expedition_time timestamp with time zone;

-- on vient mettre la valeur de starting_time dans expedition_time
UPDATE package SET
	expedition_time = (
	 	SELECT starting_time FROM expedition
		WHERE expedition_id = expedition.id
	);

-- on supprime la colonne expedition_id
ALTER TABLE public."package" DROP COLUMN expedition_id;

-- on supprime la table expedition en dernier car on en a besoin pour retrouver la valeur de expedition_time et il faut que la colonne expedition_id soit supprimée avant pour éviter des problématiques liées à la référence entre les deux tables
DROP TABLE public.expedition;

COMMIT;
