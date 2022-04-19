-- Table: public.APPEARANCE

-- DROP TABLE IF EXISTS public."APPEARANCE";

CREATE TABLE IF NOT EXISTS public."APPEARANCE"
(
    appearance_id serial NOT NULL,
    gender character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    height double precision NOT NULL,
    weight integer NOT NULL,
    age integer NOT NULL,
    eye_color character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    hair_color character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    skin_color character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "APPEARANCE_pkey" PRIMARY KEY (appearance_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."APPEARANCE"
    OWNER to ubuntu;

REVOKE ALL ON TABLE public."APPEARANCE" FROM users;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public."APPEARANCE" TO admins;

GRANT SELECT ON TABLE public."APPEARANCE" TO anonymous;

GRANT ALL ON TABLE public."APPEARANCE" TO ubuntu;

GRANT SELECT ON TABLE public."APPEARANCE" TO users;