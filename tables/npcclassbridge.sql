-- Table: public.NPC_SPECIALIZATIONS

-- DROP TABLE IF EXISTS public."NPC_SPECIALIZATIONS";

CREATE TABLE IF NOT EXISTS public."NPC_SPECIALIZATIONS"
(
    char_id integer NOT NULL,
    class_id integer NOT NULL,
    CONSTRAINT npc_specializations_pkey PRIMARY KEY (char_id, class_id),
    CONSTRAINT fk_npc_char FOREIGN KEY (char_id)
        REFERENCES public."NPC" (npc_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_npc_class FOREIGN KEY (class_id)
        REFERENCES public."CLASS" (class_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."NPC_SPECIALIZATIONS"
    OWNER to postgres;