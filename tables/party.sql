-- Table: public.PARTY

-- DROP TABLE IF EXISTS public."PARTY";

CREATE TABLE IF NOT EXISTS public."PARTY"
(
    party_id SERIAL NOT NULL,
    campaign_id integer,
    size integer,
    user_id integer,
    notes character varying(1024) COLLATE pg_catalog."default",
    wealth numeric(10,2),
    CONSTRAINT "PARTY_pkey" PRIMARY KEY (party_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."PARTY"
    OWNER to postgres;