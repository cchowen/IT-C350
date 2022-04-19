-- Table: public.NPC

-- DROP TABLE IF EXISTS public."NPC";

CREATE TABLE IF NOT EXISTS public."NPC"
(
    npc_id serial NOT NULL,
    npc_level integer,
    npc_hitpoints integer,
    challenge_rating integer,
    npc_name character varying COLLATE pg_catalog."default" NOT NULL,
    npc_campaign_id integer NOT NULL,
    npc_class_id integer,
    npc_race_id integer NOT NULL,
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
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."NPC"
    OWNER to ubuntu;

REVOKE ALL ON TABLE public."NPC" FROM users;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public."NPC" TO admins;

GRANT SELECT ON TABLE public."NPC" TO anonymous;

GRANT ALL ON TABLE public."NPC" TO ubuntu;

GRANT SELECT ON TABLE public."NPC" TO users;