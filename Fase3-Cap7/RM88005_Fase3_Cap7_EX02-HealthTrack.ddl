-- Gerado por Oracle SQL Developer Data Modeler 21.1.0.092.1221
--   em:        2021-05-22 23:28:04 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE t_bairro (
    cd_bairro           INTEGER NOT NULL,
    nm_bairro           VARCHAR2(60) NOT NULL,
    t_cidade_cd_cidade  INTEGER NOT NULL
);

ALTER TABLE t_bairro ADD CONSTRAINT t_bairro_pk PRIMARY KEY ( cd_bairro );

CREATE TABLE t_bitcoin (
    cd_bitcoin           INTEGER NOT NULL,
    ds_carteira_bitcoin  VARCHAR2(100) NOT NULL
);

ALTER TABLE t_bitcoin ADD CONSTRAINT t_bitcoin_pk PRIMARY KEY ( cd_bitcoin );

CREATE TABLE t_cartao (
    cd_cartao          INTEGER NOT NULL,
    nr_cartao          NUMBER(16) NOT NULL,
    nm_titular_cartao  VARCHAR2(20) NOT NULL,
    nr_cvv             NUMBER(3) NOT NULL,
    nr_ano_venc        NUMBER(4) NOT NULL,
    nr_mes_venc        NUMBER(2) NOT NULL,
    ds_bandeira        VARCHAR2(20) NOT NULL
);

ALTER TABLE t_cartao ADD CONSTRAINT t_cartao_pk PRIMARY KEY ( cd_cartao );

CREATE TABLE t_cidade (
    cd_cidade           INTEGER NOT NULL,
    nm_cidade           VARCHAR2(60) NOT NULL,
    t_estado_cd_estado  INTEGER NOT NULL
);

ALTER TABLE t_cidade ADD CONSTRAINT t_cidade_pk PRIMARY KEY ( cd_cidade );

CREATE TABLE t_cli_email (
    cd_email              INTEGER NOT NULL,
    t_cliente_cd_cliente  VARCHAR2(16) NOT NULL,
    nm_email              VARCHAR2(40) NOT NULL,
    ds_tipo_email         VARCHAR2(15),
    in_email_principal    CHAR(1)
);

ALTER TABLE t_cli_email ADD CONSTRAINT t_cli_email_pk PRIMARY KEY ( cd_email,
                                                                    t_cliente_cd_cliente );

CREATE TABLE t_cli_fone (
    cd_fone                       INTEGER NOT NULL,
    t_cli_tipo_fone_cd_tipo_fone  INTEGER NOT NULL,
    t_cliente_cd_cliente          VARCHAR2(16) NOT NULL,
    nr_fone                       NUMBER(9) NOT NULL,
    nr_ddd                        NUMBER(2),
    nr_ddi                        NUMBER(3)
);

ALTER TABLE t_cli_fone ADD CONSTRAINT t_cli_fone_pk PRIMARY KEY ( cd_fone,
                                                                  t_cliente_cd_cliente );

CREATE TABLE t_cli_p_fisica (
    cd_cliente     VARCHAR2(16) NOT NULL,
    nr_cpf         NUMBER(11) NOT NULL,
    dt_nascimento  DATE NOT NULL,
    ds_sexo        VARCHAR2(15) NOT NULL,
    nr_altura      NUMBER(3, 2) NOT NULL
);

ALTER TABLE t_cli_p_fisica ADD CONSTRAINT t_cli_p_fisica_pk PRIMARY KEY ( cd_cliente );

ALTER TABLE t_cli_p_fisica ADD CONSTRAINT t_cli_p_fisica_pkv1 UNIQUE ( nr_cpf );

CREATE TABLE t_cli_p_juridica (
    cd_cliente         VARCHAR2(16) NOT NULL,
    nr_cnpj            NUMBER(14) NOT NULL,
    ds_razao_social    VARCHAR2(60) NOT NULL,
    nr_insc_estadual   NUMBER(20),
    ds_ramo_atividade  VARCHAR2(100)
);

ALTER TABLE t_cli_p_juridica ADD CONSTRAINT t_cli_p_juridica_pk PRIMARY KEY ( cd_cliente );

ALTER TABLE t_cli_p_juridica ADD CONSTRAINT t_cli_p_juridica_pkv1 UNIQUE ( nr_cnpj );

CREATE TABLE t_cli_tipo_fone (
    cd_tipo_fone  INTEGER NOT NULL,
    ds_tipo_fone  VARCHAR2(15)
);

ALTER TABLE t_cli_tipo_fone ADD CONSTRAINT t_cli_tipo_fone_pk PRIMARY KEY ( cd_tipo_fone );

CREATE TABLE t_cliente (
    cd_cliente      VARCHAR2(16) NOT NULL,
    nm_nome         VARCHAR2(15) NOT NULL,
    nm_sobrenome    VARCHAR2(15),
    ft_foto_perfil  BLOB,
    ds_senha        VARCHAR2(64) NOT NULL
);

ALTER TABLE t_cliente
    ADD CONSTRAINT ch_inh_t_cliente CHECK ( cd_cliente IN ( 'T_CLIENTE', 'T_CLI_P_FISICA', 'T_CLI_P_JURIDICA' ) );

ALTER TABLE t_cliente ADD CONSTRAINT t_cliente_pk PRIMARY KEY ( cd_cliente );

CREATE TABLE t_coach (
    cd_produto       VARCHAR2(9) NOT NULL,
    cd_profissional  INTEGER NOT NULL,
    nm_profissional  VARCHAR2(60) NOT NULL,
    dt_nascimento    DATE NOT NULL,
    nr_cpf           NUMBER(11) NOT NULL,
    nr_telefone_pro  NUMBER(13) NOT NULL,
    ds_email_pro     VARCHAR2(50) NOT NULL,
    nr_cref          NUMBER(5),
    nr_crn           NUMBER(7),
    ds_uf_conselho   CHAR(2) NOT NULL,
    dt_admissao      DATE NOT NULL,
    dt_saida         DATE,
    ds_senha_pro     VARCHAR2(64) NOT NULL
);

ALTER TABLE t_coach ADD CONSTRAINT t_coach_pk PRIMARY KEY ( cd_produto );

ALTER TABLE t_coach ADD CONSTRAINT t_coach_pkv1 UNIQUE ( cd_profissional );

CREATE TABLE t_dieta (
    cd_produto       VARCHAR2(9) NOT NULL,
    cd_dieta         NUMBER(5) NOT NULL,
    nm_dieta         VARCHAR2(50) NOT NULL,
    ds_tipo_dieta    VARCHAR2(100) NOT NULL,
    ft_imagem_dieta  BLOB NOT NULL
);

ALTER TABLE t_dieta ADD CONSTRAINT t_dieta_pk PRIMARY KEY ( cd_produto );

ALTER TABLE t_dieta ADD CONSTRAINT t_dieta_pkv1 UNIQUE ( cd_dieta );

CREATE TABLE t_endereco (
    cd_lograd                     INTEGER NOT NULL,
    ds_lograd                     VARCHAR2(100) NOT NULL,
    t_bairro_cd_bairro            INTEGER NOT NULL,
    t_tp_logradouro_cd_tp_lograd  INTEGER NOT NULL,
    t_cliente_cd_cliente          VARCHAR2(16) NOT NULL
);

ALTER TABLE t_endereco ADD CONSTRAINT t_endereco_pk PRIMARY KEY ( cd_lograd );

CREATE TABLE t_estado (
    cd_estado       INTEGER NOT NULL,
    nm_estado       VARCHAR2(60) NOT NULL,
    t_pais_cd_pais  INTEGER NOT NULL
);

ALTER TABLE t_estado ADD CONSTRAINT t_estado_pk PRIMARY KEY ( cd_estado );

CREATE TABLE t_item_nf (
    nr_qtde                   NUMBER(4) NOT NULL,
    vl_preco_unitario         NUMBER(5, 2) NOT NULL,
    t_produto_cd_produto      VARCHAR2(9) NOT NULL,
    t_nt_fiscal_nr_nt_fiscal  NUMBER(9) NOT NULL
);

ALTER TABLE t_item_nf ADD CONSTRAINT t_item_nf_pk PRIMARY KEY ( t_nt_fiscal_nr_nt_fiscal );

CREATE TABLE t_nt_fiscal (
    nr_nt_fiscal          NUMBER(9) NOT NULL,
    t_cliente_cd_cliente  VARCHAR2(16) NOT NULL,
    dt_emissao            DATE NOT NULL,
    nr_icms               NUMBER(3) NOT NULL
);

ALTER TABLE t_nt_fiscal ADD CONSTRAINT t_nt_fiscal_pk PRIMARY KEY ( nr_nt_fiscal );

CREATE TABLE t_pagamento (
    cd_pagamento          INTEGER NOT NULL,
    t_cliente_cd_cliente  VARCHAR2(16) NOT NULL,
    t_cartao_cd_cartao    INTEGER NOT NULL,
    t_bitcoin_cd_bitcoin  INTEGER NOT NULL,
    t_paypal_cd_paypal    INTEGER NOT NULL,
    vl_pagamento          NUMBER(6, 2) NOT NULL,
    nr_parcelas           NUMBER(2) NOT NULL,
    ds_meio_pagamento     VARCHAR2(10) NOT NULL
);

ALTER TABLE t_pagamento ADD CONSTRAINT t_pagamento_pk PRIMARY KEY ( cd_pagamento );

CREATE TABLE t_pais (
    cd_pais  INTEGER NOT NULL,
    nm_pais  VARCHAR2(40) NOT NULL
);

ALTER TABLE t_pais ADD CONSTRAINT t_pais_pk PRIMARY KEY ( cd_pais );

CREATE TABLE t_paypal (
    cd_paypal        INTEGER NOT NULL,
    ds_conta_paypal  VARCHAR2(30) NOT NULL
);

ALTER TABLE t_paypal ADD CONSTRAINT t_paypal_pk PRIMARY KEY ( cd_paypal );

CREATE TABLE t_peso (
    cd_peso               INTEGER NOT NULL,
    t_cliente_cd_cliente  VARCHAR2(16) NOT NULL,
    nr_peso               NUMBER(5, 2) NOT NULL,
    dt_inclusao           DATE NOT NULL,
    dt_alteracao          DATE
);

ALTER TABLE t_peso ADD CONSTRAINT t_peso_pk PRIMARY KEY ( cd_peso,
                                                          t_cliente_cd_cliente );

CREATE TABLE t_produto (
    cd_produto         VARCHAR2(9) NOT NULL,
    ds_produto         VARCHAR2(50) NOT NULL,
    nr_ipi             NUMBER(4, 2) NOT NULL,
    nr_preco_unitario  NUMBER(6, 2) NOT NULL
);

ALTER TABLE t_produto
    ADD CONSTRAINT ch_inh_t_produto CHECK ( cd_produto IN ( 'T_COACH', 'T_DIETA', 'T_PRODUTO', 'T_TREINOS' ) );

ALTER TABLE t_produto ADD CONSTRAINT t_produto_pk PRIMARY KEY ( cd_produto );

CREATE TABLE t_tp_logradouro (
    cd_tp_lograd  INTEGER NOT NULL,
    ds_tp_lograd  VARCHAR2(15) NOT NULL
);

ALTER TABLE t_tp_logradouro ADD CONSTRAINT t_tp_logradouro_pk PRIMARY KEY ( cd_tp_lograd );

CREATE TABLE t_treinos (
    cd_produto               VARCHAR2(9) NOT NULL,
    cd_treino                NUMBER(5) NOT NULL,
    nm_treino                VARCHAR2(30) NOT NULL,
    ds_tipo_treino           VARCHAR2(100) NOT NULL,
    ds_classificacao_treino  VARCHAR2(20) NOT NULL,
    ds_nivel_treino          NUMBER(2) NOT NULL
);

ALTER TABLE t_treinos ADD CONSTRAINT t_treinos_pk PRIMARY KEY ( cd_produto );

ALTER TABLE t_treinos ADD CONSTRAINT t_treinos_pkv1 UNIQUE ( cd_treino );

ALTER TABLE t_bairro
    ADD CONSTRAINT t_bairro_t_cidade_fk FOREIGN KEY ( t_cidade_cd_cidade )
        REFERENCES t_cidade ( cd_cidade );

ALTER TABLE t_cidade
    ADD CONSTRAINT t_cidade_t_estado_fk FOREIGN KEY ( t_estado_cd_estado )
        REFERENCES t_estado ( cd_estado );

ALTER TABLE t_cli_email
    ADD CONSTRAINT t_cli_email_t_cliente_fk FOREIGN KEY ( t_cliente_cd_cliente )
        REFERENCES t_cliente ( cd_cliente );

ALTER TABLE t_cli_fone
    ADD CONSTRAINT t_cli_fone_t_cli_tipo_fone_fk FOREIGN KEY ( t_cli_tipo_fone_cd_tipo_fone )
        REFERENCES t_cli_tipo_fone ( cd_tipo_fone );

ALTER TABLE t_cli_fone
    ADD CONSTRAINT t_cli_fone_t_cliente_fk FOREIGN KEY ( t_cliente_cd_cliente )
        REFERENCES t_cliente ( cd_cliente );

ALTER TABLE t_cli_p_fisica
    ADD CONSTRAINT t_cli_p_fisica_t_cliente_fk FOREIGN KEY ( cd_cliente )
        REFERENCES t_cliente ( cd_cliente );

ALTER TABLE t_cli_p_juridica
    ADD CONSTRAINT t_cli_p_juridica_t_cliente_fk FOREIGN KEY ( cd_cliente )
        REFERENCES t_cliente ( cd_cliente );

ALTER TABLE t_coach
    ADD CONSTRAINT t_coach_t_produto_fk FOREIGN KEY ( cd_produto )
        REFERENCES t_produto ( cd_produto );

ALTER TABLE t_dieta
    ADD CONSTRAINT t_dieta_t_produto_fk FOREIGN KEY ( cd_produto )
        REFERENCES t_produto ( cd_produto );

ALTER TABLE t_endereco
    ADD CONSTRAINT t_endereco_t_bairro_fk FOREIGN KEY ( t_bairro_cd_bairro )
        REFERENCES t_bairro ( cd_bairro );

ALTER TABLE t_endereco
    ADD CONSTRAINT t_endereco_t_cliente_fk FOREIGN KEY ( t_cliente_cd_cliente )
        REFERENCES t_cliente ( cd_cliente );

ALTER TABLE t_endereco
    ADD CONSTRAINT t_endereco_t_tp_logradouro_fk FOREIGN KEY ( t_tp_logradouro_cd_tp_lograd )
        REFERENCES t_tp_logradouro ( cd_tp_lograd );

ALTER TABLE t_estado
    ADD CONSTRAINT t_estado_t_pais_fk FOREIGN KEY ( t_pais_cd_pais )
        REFERENCES t_pais ( cd_pais );

ALTER TABLE t_item_nf
    ADD CONSTRAINT t_item_nf_t_nt_fiscal_fk FOREIGN KEY ( t_nt_fiscal_nr_nt_fiscal )
        REFERENCES t_nt_fiscal ( nr_nt_fiscal );

ALTER TABLE t_item_nf
    ADD CONSTRAINT t_item_nf_t_produto_fk FOREIGN KEY ( t_produto_cd_produto )
        REFERENCES t_produto ( cd_produto );

ALTER TABLE t_nt_fiscal
    ADD CONSTRAINT t_nt_fiscal_t_cliente_fk FOREIGN KEY ( t_cliente_cd_cliente )
        REFERENCES t_cliente ( cd_cliente );

ALTER TABLE t_pagamento
    ADD CONSTRAINT t_pagamento_t_bitcoin_fk FOREIGN KEY ( t_bitcoin_cd_bitcoin )
        REFERENCES t_bitcoin ( cd_bitcoin );

ALTER TABLE t_pagamento
    ADD CONSTRAINT t_pagamento_t_cartao_fk FOREIGN KEY ( t_cartao_cd_cartao )
        REFERENCES t_cartao ( cd_cartao );

ALTER TABLE t_pagamento
    ADD CONSTRAINT t_pagamento_t_cliente_fk FOREIGN KEY ( t_cliente_cd_cliente )
        REFERENCES t_cliente ( cd_cliente );

ALTER TABLE t_pagamento
    ADD CONSTRAINT t_pagamento_t_paypal_fk FOREIGN KEY ( t_paypal_cd_paypal )
        REFERENCES t_paypal ( cd_paypal );

ALTER TABLE t_peso
    ADD CONSTRAINT t_peso_t_cliente_fk FOREIGN KEY ( t_cliente_cd_cliente )
        REFERENCES t_cliente ( cd_cliente );

ALTER TABLE t_treinos
    ADD CONSTRAINT t_treinos_t_produto_fk FOREIGN KEY ( cd_produto )
        REFERENCES t_produto ( cd_produto );

CREATE OR REPLACE TRIGGER arc_fkarc_12_t_cli_p_fisica BEFORE
    INSERT OR UPDATE OF cd_cliente ON t_cli_p_fisica
    FOR EACH ROW
DECLARE
    d VARCHAR2(16);
BEGIN
    SELECT
        a.cd_cliente
    INTO d
    FROM
        t_cliente a
    WHERE
        a.cd_cliente = :new.cd_cliente;

    IF ( d IS NULL OR d <> 'T_CLI_P_FISICA' ) THEN
        raise_application_error(-20223,
                               'FK T_CLI_P_FISICA_T_CLIENTE_FK in Table T_CLI_P_FISICA violates Arc constraint on Table T_CLIENTE - discriminator column cd_cliente doesn''t have value ''T_CLI_P_FISICA''');
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER arc_fkarc_12_t_cli_p_juridica BEFORE
    INSERT OR UPDATE OF cd_cliente ON t_cli_p_juridica
    FOR EACH ROW
DECLARE
    d VARCHAR2(16);
BEGIN
    SELECT
        a.cd_cliente
    INTO d
    FROM
        t_cliente a
    WHERE
        a.cd_cliente = :new.cd_cliente;

    IF ( d IS NULL OR d <> 'T_CLI_P_JURIDICA' ) THEN
        raise_application_error(-20223,
                               'FK T_CLI_P_JURIDICA_T_CLIENTE_FK in Table T_CLI_P_JURIDICA violates Arc constraint on Table T_CLIENTE - discriminator column cd_cliente doesn''t have value ''T_CLI_P_JURIDICA''');
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER arc_fkarc_13_t_dieta BEFORE
    INSERT OR UPDATE OF cd_produto ON t_dieta
    FOR EACH ROW
DECLARE
    d VARCHAR2(9);
BEGIN
    SELECT
        a.cd_produto
    INTO d
    FROM
        t_produto a
    WHERE
        a.cd_produto = :new.cd_produto;

    IF ( d IS NULL OR d <> 'T_DIETA' ) THEN
        raise_application_error(-20223,
                               'FK T_DIETA_T_PRODUTO_FK in Table T_DIETA violates Arc constraint on Table T_PRODUTO - discriminator column cd_produto doesn''t have value ''T_DIETA''');
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER arc_fkarc_13_t_treinos BEFORE
    INSERT OR UPDATE OF cd_produto ON t_treinos
    FOR EACH ROW
DECLARE
    d VARCHAR2(9);
BEGIN
    SELECT
        a.cd_produto
    INTO d
    FROM
        t_produto a
    WHERE
        a.cd_produto = :new.cd_produto;

    IF ( d IS NULL OR d <> 'T_TREINOS' ) THEN
        raise_application_error(-20223,
                               'FK T_TREINOS_T_PRODUTO_FK in Table T_TREINOS violates Arc constraint on Table T_PRODUTO - discriminator column cd_produto doesn''t have value ''T_TREINOS''');
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER arc_fkarc_13_t_coach BEFORE
    INSERT OR UPDATE OF cd_produto ON t_coach
    FOR EACH ROW
DECLARE
    d VARCHAR2(9);
BEGIN
    SELECT
        a.cd_produto
    INTO d
    FROM
        t_produto a
    WHERE
        a.cd_produto = :new.cd_produto;

    IF ( d IS NULL OR d <> 'T_COACH' ) THEN
        raise_application_error(-20223,
                               'FK T_COACH_T_PRODUTO_FK in Table T_COACH violates Arc constraint on Table T_PRODUTO - discriminator column cd_produto doesn''t have value ''T_COACH''');
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            23
-- CREATE INDEX                             0
-- ALTER TABLE                             52
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           5
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
