-- Table: public.QUESTS

-- DROP TABLE IF EXISTS public."QUESTS";

CREATE TABLE IF NOT EXISTS public."QUESTS"
(
    name character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    quest_id SERIAL NOT NULL,
    is_complete integer NOT NULL,
    difficulty character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    campaign_id integer NOT NULL,
    CONSTRAINT "QUESTS_pkey" PRIMARY KEY (quest_id),
    CONSTRAINT fk_campaign FOREIGN KEY (campaign_id)
        REFERENCES public."CAMPAIGN" (campaign_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."QUESTS"
    OWNER to postgres;