-- Table: public.RACE

-- DROP TABLE IF EXISTS public."RACE";

CREATE TABLE IF NOT EXISTS public."RACE"
(
    race_id serial NOT NULL,
    race_name character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    description character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    speed integer NOT NULL,
    size character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "RACE_pkey" PRIMARY KEY (race_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."RACE"
    OWNER to ubuntu;

REVOKE ALL ON TABLE public."RACE" FROM users;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public."RACE" TO admins;

GRANT SELECT ON TABLE public."RACE" TO anonymous;

GRANT ALL ON TABLE public."RACE" TO ubuntu;

GRANT SELECT ON TABLE public."RACE" TO users;