-- Table: public.CAMPAIGN

-- DROP TABLE IF EXISTS public."CAMPAIGN";

CREATE TABLE IF NOT EXISTS public."CAMPAIGN"
(
    campaign_name character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    is_active integer NOT NULL,
    campaign_id SERIAL NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT "CAMPAIGN_pkey" PRIMARY KEY (campaign_id),
    CONSTRAINT fk_user FOREIGN KEY (user_id)
        REFERENCES public."USER" (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."CAMPAIGN"
    OWNER to postgres;