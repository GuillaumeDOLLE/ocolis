-- Deploy ocolis:7.constraints to pg

BEGIN;

-- on crèe un domaine pint(positive int) qui va nous permettre de déclarer des champs en type pint
CREATE DOMAIN pint AS int CHECK( value > 0);

ALTER TABLE public."package"
    ALTER COLUMN worth TYPE pint;
    
COMMIT;
