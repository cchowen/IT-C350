-- Table: public.NPC

-- DROP TABLE IF EXISTS public."NPC";

CREATE TABLE IF NOT EXISTS public."NPC"
(
    npc_id SERIAL NOT NULL,
    npc_level integer NOT NULL,
    npc_hitpoints integer,
    challenge_rating integer,
    npc_name character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    npc_campaign_id integer NOT NULL,
    npc_class_id integer,
    npc_race_id integer NOT NULL,
    npc_alt_class_id integer,
    npc_alt_class_level integer,
    CONSTRAINT "NPC_pkey" PRIMARY KEY (npc_id),
    CONSTRAINT fk_npc_campaign FOREIGN KEY (npc_campaign_id)
        REFERENCES public."CAMPAIGN" (campaign_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_npc_class_id FOREIGN KEY (npc_class_id)
        REFERENCES public."CLASS" (class_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_npc_race FOREIGN KEY (npc_race_id)
        REFERENCES public."RACE" (race_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "npcLevelCap" CHECK (("npc_level" + "npc_alt_class_level") <= 20) NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."NPC"
    OWNER to postgres;