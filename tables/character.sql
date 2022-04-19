-- Table: public.CHARACTER

-- DROP TABLE IF EXISTS public."CHARACTER";

CREATE TABLE IF NOT EXISTS public."CHARACTER"
(
    char_name character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    hitpoints integer NOT NULL,
    strength integer NOT NULL,
    charisma integer NOT NULL,
    wisdom integer NOT NULL,
    intelligence integer NOT NULL,
    dexterity integer NOT NULL,
    constitution integer NOT NULL,
    class_level integer NOT NULL,
    class_id integer NOT NULL,
    party_id integer NOT NULL,
    appearance_id integer NOT NULL,
    user_id integer NOT NULL,
    race_id integer NOT NULL,
    char_id serial NOT NULL,
    CONSTRAINT char_pkey PRIMARY KEY (char_id),
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
    CONSTRAINT charlevel CHECK (class_level > 0 OR class_level <= 20)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."CHARACTER"
    OWNER to ubuntu;

GRANT SELECT, DELETE, INSERT, UPDATE ON TABLE public."CHARACTER" TO admins;

GRANT SELECT ON TABLE public."CHARACTER" TO anonymous;

GRANT ALL ON TABLE public."CHARACTER" TO ubuntu;

GRANT ALL ON TABLE public."CHARACTER" TO users;