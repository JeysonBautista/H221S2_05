-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-11-04 04:35:48.402

-- tables
-- Table: ALUMNO
CREATE TABLE ALUMNO (
    CODALU char(5) NOT NULL COMMENT 'Contiene el código identificador de cada alumno',
    NOMALU varchar(60) NOT NULL COMMENT 'Contiene los nombre del alumno.',
    APEALU varchar(60) NOT NULL COMMENT 'Contiene los apellidos del alumno',
    DIRALU varchar(100) NOT NULL COMMENT 'Contiene la dirección del alumno.',
    CELALU char(9) NOT NULL COMMENT 'Contiene el celular del alumno.',
    EMAALU varchar(80) NOT NULL COMMENT 'Contiene el  email del alumno',
    DNIALU char(8) NOT NULL COMMENT 'Contiene los numero de DNI  del alumno.',
    FECNACALU date NOT NULL COMMENT 'Contiene la  fecha de nacimiento del alumno.',
    CODUBI char(6) NOT NULL COMMENT 'Contiene el código ubigeo',
    CONSTRAINT ALUMNO_pk PRIMARY KEY (CODALU)
) COMMENT 'Contiene la información relacionado al alumno. ';

-- Table: APODERADO
CREATE TABLE APODERADO (
    CODAPO char(5) NOT NULL COMMENT 'Contiene el código identificador de cada apoderado. Por ejemplo C0004',
    NOMAPO varchar(60) NOT NULL COMMENT 'Contiene  los nombres de uno o varios apoderados.',
    APEAPO varchar(60) NOT NULL COMMENT 'Contiene  los apellidos de uno o varios apoderados.',
    DIRAPO varchar(100) NOT NULL COMMENT 'Contiene la dirección del apoderado',
    PROVAPO varchar(60) NOT NULL COMMENT 'Contiene la provincia del  o de los apoderados.',
    CELAPO char(9) NOT NULL COMMENT 'Contiene los número de celular de los apoderados.',
    EMAAPO varchar(80) NOT NULL COMMENT 'Contiene el  email del  o de los apoderados.',
    DNIAPO char(8) NOT NULL COMMENT 'Contiene  el numero de DNI del o de los apoderados.',
    CODUBI char(6) NOT NULL COMMENT 'Contiene el codigo ubigeo',
    CONSTRAINT APODERADO_pk PRIMARY KEY (CODAPO)
) COMMENT 'Contiene la información relacionado al o los apoderados. ';

-- Table: ENCARGADO
CREATE TABLE ENCARGADO (
    CODENC char(5) NOT NULL COMMENT 'Contiene el código identificador del encargado',
    NOMENC varchar(50) NOT NULL COMMENT 'Contiene el nombre del encargado',
    APEENC varchar(50) NOT NULL COMMENT 'Contiene el apellido del encargado',
    CELENC char(9) NOT NULL COMMENT 'Contiene el celular del encargado',
    DNIENC char(8) NOT NULL COMMENT 'Contiene el DNI del encargado',
    EMAENC varchar(50) NOT NULL COMMENT 'Contiene el email del encargado',
    CONSTRAINT ENCARGADO_pk PRIMARY KEY (CODENC)
) COMMENT 'Contiene la informacion relacionado al empleado.';

-- Table: MATRICULA
CREATE TABLE MATRICULA (
    IDMAT char(5) NOT NULL COMMENT 'Contiene el código identificador de cada matrícula. ',
    CODENC char(5) NOT NULL COMMENT 'Contiene el codigo del encargado',
    CODAPO char(5) NOT NULL COMMENT 'Contiene el codigo del apoderado',
    CODALU char(5) NOT NULL COMMENT 'Contiene el codigo del alumno',
    FECMAT date NOT NULL COMMENT 'Contiene la fecha de matricula',
    TIPMAT char(1) NOT NULL COMMENT 'Contiene el tipo de matricula',
    GRADMAT int NOT NULL COMMENT 'Contiene el grado de matricula',
    CONSTRAINT MATRICULA_pk PRIMARY KEY (IDMAT)
) COMMENT 'Contiene los datos  relacionados a la matrícula.';

-- Table: UBIGEO
CREATE TABLE UBIGEO (
    CODUBI char(6) NOT NULL COMMENT 'Contiene el código ubigeo',
    DISTUBI varchar(60) NOT NULL COMMENT 'Contiene el distrito del ubigeo',
    PROVUBI varchar(80) NOT NULL COMMENT 'Contiene la provincia del ubigeo',
    DEPUBI varchar(60) NOT NULL COMMENT 'Contiene el departamento del ubigeo',
    CONSTRAINT UBIGEO_pk PRIMARY KEY (CODUBI)
) COMMENT 'Contiene los datos  relacionados a la matrícula.';

-- foreign keys
-- Reference: ALUMNO_UBIGEO (table: ALUMNO)
ALTER TABLE ALUMNO ADD CONSTRAINT ALUMNO_UBIGEO FOREIGN KEY ALUMNO_UBIGEO (CODUBI)
    REFERENCES UBIGEO (CODUBI);

-- Reference: APODERADO_UBIGEO (table: APODERADO)
ALTER TABLE APODERADO ADD CONSTRAINT APODERADO_UBIGEO FOREIGN KEY APODERADO_UBIGEO (CODUBI)
    REFERENCES UBIGEO (CODUBI);

-- Reference: MATRICULA_ALUMNO (table: MATRICULA)
ALTER TABLE MATRICULA ADD CONSTRAINT MATRICULA_ALUMNO FOREIGN KEY MATRICULA_ALUMNO (CODALU)
    REFERENCES ALUMNO (CODALU);

-- Reference: MATRICULA_APODERADO (table: MATRICULA)
ALTER TABLE MATRICULA ADD CONSTRAINT MATRICULA_APODERADO FOREIGN KEY MATRICULA_APODERADO (CODAPO)
    REFERENCES APODERADO (CODAPO);

-- Reference: MATRICULA_ENCARGADO (table: MATRICULA)
ALTER TABLE MATRICULA ADD CONSTRAINT MATRICULA_ENCARGADO FOREIGN KEY MATRICULA_ENCARGADO (CODENC)
    REFERENCES ENCARGADO (CODENC);

-- End of file.

