-- Table: public.CLASS

-- DROP TABLE IF EXISTS public."CLASS";

CREATE TABLE IF NOT EXISTS public."CLASS"
(
    class_id serial NOT NULL,
    class_name character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    subclass character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    description character varying COLLATE pg_catalog."default",
    hit_die integer NOT NULL,
    primary_attribute character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    saving_throws character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "CLASS_pkey" PRIMARY KEY (class_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."CLASS"
    OWNER to ubuntu;

REVOKE ALL ON TABLE public."CLASS" FROM users;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public."CLASS" TO admins;

GRANT SELECT ON TABLE public."CLASS" TO anonymous;

GRANT ALL ON TABLE public."CLASS" TO ubuntu;

GRANT SELECT ON TABLE public."CLASS" TO users;