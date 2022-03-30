-- Table: public.CHARACTER

-- DROP TABLE IF EXISTS public."CHARACTER";

CREATE TABLE IF NOT EXISTS public."CHARACTER"
(
    character_name character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    alt_class_level integer,
    hitpoints integer NOT NULL,
    strength integer NOT NULL,
    charisma integer NOT NULL,
    race_id integer NOT NULL,
    char_id SERIAL NOT NULL,
    wisdom integer NOT NULL,
    intelligence integer NOT NULL,
    constitution integer NOT NULL,
    dexterity integer NOT NULL,
    user_id integer NOT NULL,
    class_id integer NOT NULL,
    alt_class_id integer,
    class_level integer NOT NULL,
    party_id integer NOT NULL,
    total_level integer GENERATED ALWAYS AS ((class_level + alt_class_level)) STORED,
    appearance_id integer,
    CONSTRAINT "CHARACTER_pkey" PRIMARY KEY (char_id),
    CONSTRAINT fk_char_appearance FOREIGN KEY (appearance_id)
        REFERENCES public."APPEARANCE" (appearance_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_char_party FOREIGN KEY (party_id)
        REFERENCES public."PARTY" (party_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_char_race FOREIGN KEY (race_id)
        REFERENCES public."RACE" (race_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_char_user FOREIGN KEY (user_id)
        REFERENCES public."USER" (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "characterLevel" CHECK (total_level <= 20),
    CONSTRAINT "minLevel" CHECK (class_level > 0)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."CHARACTER"
    OWNER to postgres;

COMMENT ON CONSTRAINT "characterLevel" ON public."CHARACTER"
    IS 'level must be at least 1 and no more than 20';
COMMENT ON CONSTRAINT "minLevel" ON public."CHARACTER"
    IS 'classLevel > 0';
-- Index: fki_fk_char_party

-- DROP INDEX IF EXISTS public.fki_fk_char_party;

CREATE INDEX IF NOT EXISTS fki_fk_char_party
    ON public."CHARACTER" USING btree
    (party_id ASC NULLS LAST)
    TABLESPACE pg_default;