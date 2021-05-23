-- Gerado por Oracle SQL Developer Data Modeler 21.1.0.092.1221
--   em:        2021-05-15 23:13:47 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE t_cidade (
    cd_cidade       INTEGER NOT NULL,
    t_pais_cd_pais  INTEGER NOT NULL,
    nm_cidade       VARCHAR2(50)
);

ALTER TABLE t_cidade ADD CONSTRAINT t_cidade_pk PRIMARY KEY ( cd_cidade );

CREATE TABLE t_contato (
    cd_contato                      INTEGER NOT NULL,
    ft_foto                         BLOB,
    nm_nome                         VARCHAR2(30) NOT NULL,
    nm_sobrenome                    VARCHAR2(20),
    ds_empresa                      VARCHAR2(30),
    dt_nascimento                   DATE,
    tx_notas                        CLOB,
    t_nome_relacionado_cd_nome_rel  INTEGER
);

CREATE UNIQUE INDEX t_contato__idx ON
    t_contato (
        t_nome_relacionado_cd_nome_rel
    ASC );

ALTER TABLE t_contato ADD CONSTRAINT t_contato_pk PRIMARY KEY ( cd_contato );

CREATE TABLE t_email (
    cd_email              INTEGER NOT NULL,
    t_contato_cd_contato  INTEGER NOT NULL,
    ds_email              VARCHAR2(50)
);

ALTER TABLE t_email ADD CONSTRAINT t_email_pk PRIMARY KEY ( cd_email,
                                                            t_contato_cd_contato );

CREATE TABLE t_endereco (
    cd_endereco           INTEGER NOT NULL,
    t_contato_cd_contato  INTEGER NOT NULL,
    t_cidade_cd_cidade    INTEGER NOT NULL,
    nm_rua                VARCHAR2(60),
    nr_numero_casa        NUMBER(5),
    ds_complemento_casa   VARCHAR2(30),
    nr_cep                NUMBER(8),
    nm_bairro             VARCHAR2(40)
);

ALTER TABLE t_endereco ADD CONSTRAINT t_endereco_pk PRIMARY KEY ( cd_endereco );

CREATE TABLE t_nome_relac (
    cd_nome_rel           INTEGER NOT NULL,
    t_contato_cd_contato  INTEGER,
    nm_mae                VARCHAR2(20),
    nm_pai                VARCHAR2(20),
    nm_pais               VARCHAR2(40),
    nm_irmao              VARCHAR2(20),
    nm_irma               VARCHAR2(20),
    nm_filho              VARCHAR2(20),
    nm_filha              VARCHAR2(20),
    nm_crianca            VARCHAR2(20),
    nm_amigo              VARCHAR2(20),
    nm_esposo_a           VARCHAR2(20),
    nm_parceiro_a         VARCHAR2(20),
    nm_assistente         VARCHAR2(20),
    nm_gerente            VARCHAR2(20),
    nm_outro              VARCHAR2(20)
);

CREATE UNIQUE INDEX t_nome_relacionado__idx ON
    t_nome_relac (
        t_contato_cd_contato
    ASC );

ALTER TABLE t_nome_relac ADD CONSTRAINT t_nome_relacionado_pk PRIMARY KEY ( cd_nome_rel );

CREATE TABLE t_pais (
    cd_pais  INTEGER NOT NULL,
    nm_pais  VARCHAR2(40)
);

ALTER TABLE t_pais ADD CONSTRAINT t_pais_pk PRIMARY KEY ( cd_pais );

CREATE TABLE t_site (
    cd_site               INTEGER NOT NULL,
    ds_site               VARCHAR2(50),
    t_contato_cd_contato  INTEGER NOT NULL
);

ALTER TABLE t_site ADD CONSTRAINT t_site_pk PRIMARY KEY ( cd_site );

CREATE TABLE t_telefone (
    cd_telefone           INTEGER NOT NULL,
    t_contato_cd_contato  INTEGER NOT NULL,
    nr_telefone           NUMBER(13)
);

ALTER TABLE t_telefone ADD CONSTRAINT t_telefone_pk PRIMARY KEY ( cd_telefone,
                                                                  t_contato_cd_contato );

ALTER TABLE t_cidade
    ADD CONSTRAINT t_cidade_t_pais_fk FOREIGN KEY ( t_pais_cd_pais )
        REFERENCES t_pais ( cd_pais );

ALTER TABLE t_email
    ADD CONSTRAINT t_email_t_contato_fk FOREIGN KEY ( t_contato_cd_contato )
        REFERENCES t_contato ( cd_contato );

ALTER TABLE t_endereco
    ADD CONSTRAINT t_endereco_t_cidade_fk FOREIGN KEY ( t_cidade_cd_cidade )
        REFERENCES t_cidade ( cd_cidade );

ALTER TABLE t_endereco
    ADD CONSTRAINT t_endereco_t_contato_fk FOREIGN KEY ( t_contato_cd_contato )
        REFERENCES t_contato ( cd_contato );

ALTER TABLE t_site
    ADD CONSTRAINT t_site_t_contato_fk FOREIGN KEY ( t_contato_cd_contato )
        REFERENCES t_contato ( cd_contato );

ALTER TABLE t_telefone
    ADD CONSTRAINT t_telefone_t_contato_fk FOREIGN KEY ( t_contato_cd_contato )
        REFERENCES t_contato ( cd_contato );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             2
-- ALTER TABLE                             14
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
