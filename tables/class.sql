-- Table: public.CLASS

-- DROP TABLE IF EXISTS public."CLASS";

CREATE TABLE IF NOT EXISTS public."CLASS"
(
    class_id SERIAL NOT NULL,
    class_name character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    subclass character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    description character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    hit_die integer NOT NULL,
    primary_attribute character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    saving_throws character varying(1024) COLLATE pg_catalog."default",
    CONSTRAINT "CLASS_pkey" PRIMARY KEY (class_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."CLASS"
    OWNER to postgres;