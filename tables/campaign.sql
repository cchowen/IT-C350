-- Table: public.CAMPAIGN

-- DROP TABLE IF EXISTS public."CAMPAIGN";

CREATE TABLE IF NOT EXISTS public."CAMPAIGN"
(
    campaign_id serial NOT NULL,
    campaign_name character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    is_active boolean NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT "CAMPAIGN_pkey" PRIMARY KEY (campaign_id),
    CONSTRAINT fk_user FOREIGN KEY (user_id)
        REFERENCES public."USER" (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."CAMPAIGN"
    OWNER to ubuntu;

REVOKE ALL ON TABLE public."CAMPAIGN" FROM users;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public."CAMPAIGN" TO admins;

GRANT SELECT ON TABLE public."CAMPAIGN" TO anonymous;

GRANT ALL ON TABLE public."CAMPAIGN" TO ubuntu;

GRANT SELECT ON TABLE public."CAMPAIGN" TO users;