-- Table: public.QUESTS

-- DROP TABLE IF EXISTS public."QUESTS";

CREATE TABLE IF NOT EXISTS public."QUESTS"
(
    quest_id serial NOT null,
    name character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    difficulty character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    is_complete boolean NOT NULL,
    campaign_id integer,
    CONSTRAINT "QUESTS_pkey" PRIMARY KEY (quest_id),
    CONSTRAINT fk_campaign FOREIGN KEY (campaign_id)
        REFERENCES public."CAMPAIGN" (campaign_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."QUESTS"
    OWNER to ubuntu;

REVOKE ALL ON TABLE public."QUESTS" FROM users;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public."QUESTS" TO admins;

GRANT SELECT ON TABLE public."QUESTS" TO anonymous;

GRANT ALL ON TABLE public."QUESTS" TO ubuntu;

GRANT SELECT ON TABLE public."QUESTS" TO users;