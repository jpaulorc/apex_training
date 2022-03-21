CREATE TABLE estado 
(
    ID       NUMBER       NOT NULL
   ,CODIGOUF NUMBER       NOT NULL
   ,NOME     VARCHAR(50)  NOT NULL
   ,UF       CHAR (2)     NOT NULL
   ,REGIAO   NUMBER	      NOT NULL
);

ALTER TABLE estado ADD CONSTRAINT pk_estado PRIMARY KEY (ID);

CREATE SEQUENCE estado_s;

INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 12, 'Acre', 'AC', 1);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 27, 'Alagoas', 'AL', 2);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 16, 'Amapá', 'AP', 1);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 13, 'Amazonas', 'AM', 1);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 29, 'Bahia', 'BA', 2);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 23, 'Ceará', 'CE', 2);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 53, 'Distrito Federal', 'DF', 5);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 32, 'Espírito Santo', 'ES', 3);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 52, 'Goiás', 'GO', 5);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 21, 'Maranhão', 'MA', 2);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 51, 'Mato Grosso', 'MT', 5);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 50, 'Mato Grosso do Sul', 'MS', 5);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 31, 'Minas Gerais', 'MG', 3);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 15, 'Pará', 'PA', 1);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 25, 'Paraíba', 'PB', 2);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 41, 'Paraná', 'PR', 4);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 26, 'Pernambuco', 'PE', 2);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 22, 'Piauí', 'PI', 2);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 33, 'Rio de Janeiro', 'RJ', 3);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 24, 'Rio Grande do Norte', 'RN', 2);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 43, 'Rio Grande do Sul', 'RS', 4);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 11, 'Rondônia', 'RO', 1);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 14, 'Roraima', 'RR', 1);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 42, 'Santa Catarina', 'SC', 4);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 35, 'São Paulo', 'SP', 3);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 28, 'Sergipe', 'SE', 2);
INSERT INTO estado (ID, CODIGOUF, NOME, UF, REGIAO) VALUES (estado_s.NEXTVAL, 17, 'Tocantins', 'TO', 1);
