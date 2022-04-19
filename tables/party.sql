-- Table: public.PARTY

-- DROP TABLE IF EXISTS public."PARTY";

CREATE TABLE IF NOT EXISTS public."PARTY"
(
    party_id serial NOT NULL,
    party_name character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    size integer,
    wealth integer,
    notes character varying(1024) COLLATE pg_catalog."default",
    campaign_id integer,
    CONSTRAINT "PARTY_pkey" PRIMARY KEY (party_id),
    CONSTRAINT fk_camp_belong FOREIGN KEY (campaign_id)
        REFERENCES public."CAMPAIGN" (campaign_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."PARTY"
    OWNER to ubuntu;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public."PARTY" TO admins;

GRANT SELECT ON TABLE public."PARTY" TO anonymous;

GRANT ALL ON TABLE public."PARTY" TO ubuntu;

GRANT SELECT ON TABLE public."PARTY" TO users;