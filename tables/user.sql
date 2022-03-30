-- Table: public.USER

-- DROP TABLE IF EXISTS public."USER";

CREATE TABLE IF NOT EXISTS public."USER"
(
    username character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    email character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    user_id SERIAL NOT NULL,
    is_game_master integer NOT NULL,
    date_created date NOT NULL,
    CONSTRAINT "USER_pkey" PRIMARY KEY (user_id),
    CONSTRAINT "USER_username_key" UNIQUE (username),
    CONSTRAINT unique_username UNIQUE (username)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."USER"
    OWNER to postgres;