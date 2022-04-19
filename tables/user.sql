-- Table: public.USER

-- DROP TABLE IF EXISTS public."USER";

CREATE TABLE IF NOT EXISTS public."USER"
(
    username character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    email character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    user_id serial NOT NULL,
    date_created date,
    password text COLLATE pg_catalog."default",
    is_game_master boolean NOT NULL DEFAULT false,
    CONSTRAINT "USER_pkey" PRIMARY KEY (user_id),
    CONSTRAINT "USER_username_key" UNIQUE (username),
    CONSTRAINT unique_email UNIQUE (email),
    CONSTRAINT valid_email CHECK (email::text ~* '^[A-Za-z0-9._+%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'::text)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."USER"
    OWNER to ubuntu;

REVOKE ALL ON TABLE public."USER" FROM users;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public."USER" TO admins;

GRANT SELECT ON TABLE public."USER" TO anonymous;

GRANT ALL ON TABLE public."USER" TO ubuntu;

GRANT SELECT ON TABLE public."USER" TO users;

-- Trigger: set_insert_timestamp

-- DROP TRIGGER IF EXISTS set_insert_timestamp ON public."USER";

CREATE TRIGGER set_insert_timestamp
    BEFORE INSERT
    ON public."USER"
    FOR EACH ROW
    EXECUTE FUNCTION public.trigger_set_insert_timestamp();