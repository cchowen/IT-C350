-- Table: public.RACE

-- DROP TABLE IF EXISTS public."RACE";

CREATE TABLE IF NOT EXISTS public."RACE"
(
    description character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    speed integer NOT NULL,
    size character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    race_id SERIAL NOT NULL,
    name character varying(1024) COLLATE pg_catalog."default",
    CONSTRAINT "RACE_pkey" PRIMARY KEY (race_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."RACE"
    OWNER to postgres;