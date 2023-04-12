SET check_function_bodies = false;
CREATE TABLE public.test (
    test integer NOT NULL
);
CREATE SEQUENCE public.test_test_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.test_test_seq OWNED BY public.test.test;
ALTER TABLE ONLY public.test ALTER COLUMN test SET DEFAULT nextval('public.test_test_seq'::regclass);
ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test);
