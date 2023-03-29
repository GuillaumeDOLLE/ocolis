-- Verify ocolis:1.create_table on pg

BEGIN;

SELECT id,serial_number,content_description,weight,worth,volume,sender_id,recipient_id FROM package;

SELECT id, reference, name, address, additional, postal_code, city
	FROM public.place;

ROLLBACK;
