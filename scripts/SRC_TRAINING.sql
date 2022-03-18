CREATE TABLE curso
(
    id     NUMBER NOT NULL
   ,nome   VARCHAR2(100) NOT NULL
   ,ead    VARCHAR2(1) DEFAULT 'N' NOT NULL
   ,tipo   VARCHAR2(1) DEFAULT 'B' NOT NULL
   ,descricao  VARCHAR2(2000)
);

ALTER TABLE curso ADD CONSTRAINT pk_curso PRIMARY KEY (id);

CREATE SEQUENCE curso_s;

CREATE OR REPLACE TRIGGER curso_t
    BEFORE INSERT ON curso
    FOR EACH ROW
BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
        :NEW.ID := curso_s.NEXTVAL;
    END IF;
END;
/

INSERT INTO curso (id, nome, ead, tipo) VALUES (curso_s.NEXTVAL, 'Desenvolvimento de Sistemas', 'S', 'T');
INSERT INTO curso (id, nome, ead, tipo) VALUES (curso_s.NEXTVAL, 'Comunicação', 'S', 'E');
INSERT INTO curso (id, nome, ead, tipo) VALUES (curso_s.NEXTVAL, 'Direito', 'N', 'B');
INSERT INTO curso (id, nome, ead, tipo) VALUES (curso_s.NEXTVAL, 'Administração', 'N', 'B');

COMMIT;

CREATE TABLE grau_instrucao
(
    id NUMBER NOT NULL
   ,descricao VARCHAR2(100) NOT NULL 
);

ALTER TABLE grau_instrucao ADD CONSTRAINT pk_grau_instrucao PRIMARY KEY (id);

CREATE SEQUENCE grau_instrucao_s;

CREATE OR REPLACE TRIGGER grau_instrucao_t
    BEFORE INSERT ON curso
    FOR EACH ROW
BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
        :NEW.ID := grau_instrucao_s.NEXTVAL;
    END IF;
END;
/

INSERT INTO grau_instrucao (id, descricao) VALUES (grau_instrucao_s.NEXTVAL, 'Bacharel');
INSERT INTO grau_instrucao (id, descricao) VALUES (grau_instrucao_s.NEXTVAL, 'Pós Graduado');
INSERT INTO grau_instrucao (id, descricao) VALUES (grau_instrucao_s.NEXTVAL, 'Mestrado');
INSERT INTO grau_instrucao (id, descricao) VALUES (grau_instrucao_s.NEXTVAL, 'Doutorado');
INSERT INTO grau_instrucao (id, descricao) VALUES (grau_instrucao_s.NEXTVAL, 'Pós Doutorado');

COMMIT;

CREATE TABLE professor
(
    id NUMBER NOT NULL
   ,nome VARCHAR2(100) NOT NULL 
   ,grau_instrucao_id NUMBER NOT NULL
   ,dt_nascimento DATE
   ,email VARCHAR2(100)
);

ALTER TABLE professor ADD CONSTRAINT pk_professor PRIMARY KEY (id);

ALTER TABLE professor ADD CONSTRAINT fk1_professor FOREIGN KEY (grau_instrucao_id) REFERENCES grau_instrucao (id);

CREATE SEQUENCE professor_s;

CREATE OR REPLACE TRIGGER professor_t
    BEFORE INSERT ON curso
    FOR EACH ROW
BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
        :NEW.ID := professor_s.NEXTVAL;
    END IF;
END;
/

INSERT INTO professor (id, nome, grau_instrucao_id, dt_nascimento, email) VALUES (professor_s.NEXTVAL, 'José', 1, TRUNC(add_months(SYSDATE, -40.12*12)), '');
INSERT INTO professor (id, nome, grau_instrucao_id, dt_nascimento, email) VALUES (professor_s.NEXTVAL, 'Bruno', 1, TRUNC(add_months(SYSDATE, -37.45*12)), '');
INSERT INTO professor (id, nome, grau_instrucao_id, dt_nascimento, email) VALUES (professor_s.NEXTVAL, 'Ana', 2, TRUNC(add_months(SYSDATE, -42.78*12)), '');
INSERT INTO professor (id, nome, grau_instrucao_id, dt_nascimento, email) VALUES (professor_s.NEXTVAL, 'Paulo', 3, TRUNC(add_months(SYSDATE, -50.2*12)), '');
INSERT INTO professor (id, nome, grau_instrucao_id, dt_nascimento, email) VALUES (professor_s.NEXTVAL, 'Juliana', 4, TRUNC(add_months(SYSDATE, -55.3*12)), '');

COMMIT;

CREATE OR REPLACE PACKAGE curso_k IS
    PROCEDURE enviaEmailProfessor(p_id_prof NUMBER);
END curso_k;
/

CREATE OR REPLACE PACKAGE BODY curso_k IS
    PROCEDURE enviaEmailProfessor(p_id_prof NUMBER) IS
    BEGIN
        FOR i IN (SELECT * FROM professor WHERE id = p_id_prof AND email IS NOT NULL) 
        LOOP
            apex_mail.send(
                p_to    => i.email
               ,p_from  => 'noreply@oracle.com'
               ,p_body  => 'Bem vindo professor(a) '||i.nome||' ao nosso sistema.'
               ,p_subj  => 'Bem vindo' 
            );
            apex_mail.push_queue;
        END LOOP;
    END enviaEmailProfessor;
END curso_k;
/