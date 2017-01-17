--- Example table 
CREATE TABLE deid.testdata
(
    id character varying(100) COLLATE pg_catalog."default",
    note_text character varying(1024) COLLATE pg_catalog."default",
    note_text_deid character varying(2024) COLLATE pg_catalog."default",
    date_off bigint
)
