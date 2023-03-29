-- Deploy ocolis:6.expedition to pg

BEGIN;

-- je crèe la table expédition
CREATE TABLE public.expedition
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY,
    driver_name text NOT NULL,
    vehicle_plate text NOT NULL,
    starting_time timestamp with time zone NOT NULL DEFAULT NOW(),
    ending_time timestamp with time zone,
    PRIMARY KEY (id)
);

-- j'ajoute la colonne expedition_id à la table package
ALTER TABLE IF EXISTS public."package"
    ADD COLUMN expedition_id integer;

-- je vais insérer dans expedition des valeurs par rapport à la table package
INSERT INTO public.expedition(
	driver_name, vehicle_plate, starting_time)
	SELECT DISTINCT 'inconnu', 'inconnu', expedition_time
	FROM package;

-- je mets à jour expedition_id en comparant le starting_time avec expedition_time
UPDATE public."package"
	SET expedition_id = (
		SELECT expedition.id FROM expedition
		WHERE starting_time = expedition_time
);

-- je supprime la colonne expedition_time
ALTER TABLE public."package"
    DROP COLUMN expedition_time;

COMMIT;
