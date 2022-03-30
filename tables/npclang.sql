-- Table: public.NPC_LANGUAGE

-- DROP TABLE IF EXISTS public."NPC_LANGUAGE";

CREATE TABLE IF NOT EXISTS public."NPC_LANGUAGE"
(
    char_id integer NOT NULL,
    lang_id integer NOT NULL,
    CONSTRAINT "NPC_LANGUAGE_pkey" PRIMARY KEY (char_id, lang_id),
    CONSTRAINT fk_npc_char FOREIGN KEY (char_id)
        REFERENCES public."NPC" (npc_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_npc_lang FOREIGN KEY (lang_id)
        REFERENCES public."LANGUAGE" (lang_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."NPC_LANGUAGE"
    OWNER to postgres;