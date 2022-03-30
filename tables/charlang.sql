-- Table: public.CHARACTER_LANGUAGE

-- DROP TABLE IF EXISTS public."CHARACTER_LANGUAGE";

CREATE TABLE IF NOT EXISTS public."CHARACTER_LANGUAGE"
(
    char_id integer NOT NULL,
    lang_id integer NOT NULL,
    CONSTRAINT "CHARACTER_LANGUAGE_pkey" PRIMARY KEY (char_id, lang_id),
    CONSTRAINT fk_char_id FOREIGN KEY (char_id)
        REFERENCES public."CHARACTER" (char_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_char_lang FOREIGN KEY (lang_id)
        REFERENCES public."LANGUAGE" (lang_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."CHARACTER_LANGUAGE"
    OWNER to postgres;