-- Table: public.cities_df_new

-- DROP TABLE public.cities_df_new;

CREATE TABLE public.cities_df_new
(
    state_ character varying(5) COLLATE pg_catalog."default",
    city_id integer NOT NULL,
    city character varying(100) COLLATE pg_catalog."default",
    lat double precision NOT NULL,
    "long" double precision NOT NULL,
    CONSTRAINT cities_df_new_pkey PRIMARY KEY (city_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.cities_df_new
    OWNER to postgres;