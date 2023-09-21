--ALTER SESSION SET "_oracle_script"=TRUE;
--CREATE USER EVA_INICIAL identified BY EVA_INICIAL;
--GRANT CONNECT, RESOURCE, DBA TO EVA_INICIAL;

CREATE TABLE EMPLEADO(
id_empleado					NUMBER(2),
nombre						VARCHAR(20),
apellido					VARCHAR(20),

CONSTRAINT PK_id_empleado PRIMARY KEY(id_empleado)
);


CREATE TABLE LIBRERIA(
nombre						VARCHAR(20),
calle						VARCHAR(20),
director					VARCHAR(30),
id_empleado					NUMBER(2),

CONSTRAINT PK_nombre_libreria PRIMARY KEY(nombre),
CONSTRAINT FK_id_empleado FOREIGN KEY(id_empleado) REFERENCES EMPLEADO(id_empleado)
);


CREATE TABLE LIBRO(
id_libro					NUMBER(2),
titulo						VARCHAR(20),
sinapsis					VARCHAR(50),
nombre_libreria				VARCHAR(20),

CONSTRAINT PK_id_libro PRIMARY KEY(id_libro),
CONSTRAINT FK_nombre_libreria FOREIGN KEY(nombre_libreria) REFERENCES LIBRERIA(nombre)
);


CREATE TABLE CLIENTE(
dni							VARCHAR(10),
nombre						VARCHAR(20),

CONSTRAINT PK_dni PRIMARY KEY(dni)
);


INSERT INTO EMPLEADO(id_empleado, nombre, apellido)
VALUES(1,'Herme','Ramos');

INSERT INTO EMPLEADO(id_empleado, nombre, apellido)
VALUES(2,'Jose','Diaz');

SELECT * FROM EMPLEADO;


INSERT INTO LIBRERIA(nombre, calle, director, id_empleado)
VALUES('libreria1', 'Calle cardenal', 'David', 1);

INSERT INTO LIBRERIA(nombre, calle, director, id_empleado)
VALUES('libreria2', 'Calle soria', 'Antonio', 2);

SELECT * FROM LIBRERIA;


INSERT INTO LIBRO(id_libro, titulo, nombre_libreria)
VALUES(1,'the witcher', 'libreria1');

INSERT INTO LIBRO(id_libro, titulo, nombre_libreria)
VALUES(2,'harry potter', 'libreria2');

SELECT * FROM LIBRO;


INSERT INTO CLIENTE(dni, nombre)
VALUES('12345678H', 'Paco');

SELECT * FROM CLIENTE;
