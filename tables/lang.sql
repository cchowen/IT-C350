-- Table: public.LANGUAGE

-- DROP TABLE IF EXISTS public."LANGUAGE";

CREATE TABLE IF NOT EXISTS public."LANGUAGE"
(
    lang_id SERIAL NOT NULL,
    lang_name character varying(1024) COLLATE pg_catalog."default",
    CONSTRAINT "LANGUAGE_pkey" PRIMARY KEY (lang_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."LANGUAGE"
    OWNER to postgres;