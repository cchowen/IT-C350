-- FUNCTION: public.trigger_set_insert_timestamp()

-- DROP FUNCTION IF EXISTS public.trigger_set_insert_timestamp();

CREATE OR REPLACE FUNCTION public.trigger_set_insert_timestamp()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
  NEW.date_created = NOW();
  RETURN NEW;
END;
$BODY$;

ALTER FUNCTION public.trigger_set_insert_timestamp()
    OWNER TO ubuntu;

GRANT EXECUTE ON FUNCTION public.trigger_set_insert_timestamp() TO PUBLIC;

GRANT EXECUTE ON FUNCTION public.trigger_set_insert_timestamp() TO admins;

GRANT EXECUTE ON FUNCTION public.trigger_set_insert_timestamp() TO ubuntu;

