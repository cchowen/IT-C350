-- Table: public.CHARACTER_SPECIALIZATIONS

-- DROP TABLE IF EXISTS public."CHARACTER_SPECIALIZATIONS";

CREATE TABLE IF NOT EXISTS public."CHARACTER_SPECIALIZATIONS"
(
    char_id integer NOT NULL,
    class_id integer NOT NULL,
    CONSTRAINT char_specializations_pkey PRIMARY KEY (char_id, class_id),
    CONSTRAINT fk_char_class FOREIGN KEY (class_id)
        REFERENCES public."CLASS" (class_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_char_id FOREIGN KEY (char_id)
        REFERENCES public."CHARACTER" (char_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."CHARACTER_SPECIALIZATIONS"
    OWNER to postgres;