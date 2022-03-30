-- Table: public.APPEARANCE

-- DROP TABLE IF EXISTS public."APPEARANCE";

CREATE TABLE IF NOT EXISTS public."APPEARANCE"
(
    height double precision NOT NULL,
    weight integer NOT NULL,
    eye_color character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    skin_color character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    age integer NOT NULL,
    hair_color character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    gender character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    appearance_id SERIAL NOT NULL,
    CONSTRAINT "APPEARANCE_pkey" PRIMARY KEY (appearance_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."APPEARANCE"
    OWNER to postgres;