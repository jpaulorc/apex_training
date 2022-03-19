CREATE TABLE tipo_curso
(
    id          NUMBER NOT NULL
   ,descricao   VARCHAR2(50) NOT NULL
   ,valor       CHAR(1) NOT NULL
);

ALTER TABLE tipo_curso ADD CONSTRAINT pk_tipo_curso PRIMARY KEY (id);

CREATE SEQUENCE tipo_curso_s;

CREATE OR REPLACE TRIGGER tipo_curso_t
    BEFORE INSERT ON tipo_curso
    FOR EACH ROW
BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
        :NEW.ID := tipo_curso_s.NEXTVAL;
    END IF;
END;
/

INSERT INTO tipo_curso (descricao, valor) VALUES ('Bacharel', 'B');
INSERT INTO tipo_curso (descricao, valor) VALUES ('Extensão', 'E');
INSERT INTO tipo_curso (descricao, valor) VALUES ('Tecnólogo', 'T');

COMMIT;