DROP DATABASE IF EXISTS monitoriaU2;
CREATE DATABASE monitoriaU2;
USE monitoriaU2;

DROP TABLE IF EXISTS cliente_voo CASCADE;
DROP TABLE IF EXISTS milhas CASCADE;
DROP TABLE IF EXISTS voo CASCADE;
DROP TABLE IF EXISTS piloto CASCADE;
DROP TABLE IF EXISTS cliente CASCADE;

DROP SEQUENCE IF EXISTS scliente;
DROP SEQUENCE IF EXISTS spiloto;
DROP SEQUENCE IF EXISTS svoo;

CREATE SEQUENCE scliente START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE spiloto START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE svoo START WITH 1 INCREMENT BY 1;

CREATE TABLE cliente (
	codigo INT DEFAULT NEXTVAL(scliente),
    nome VARCHAR(256),
    endereco VARCHAR(256),
    PRIMARY KEY (codigo)
);

CREATE TABLE piloto (
	codigo INT AUTO_INCREMENT,
    nome VARCHAR(256),
    num_voos INT,
    PRIMARY KEY (codigo)
);

CREATE TABLE voo (
	codigo INT AUTO_INCREMENT,
    tipo VARCHAR(256),
    piloto INT,
    num_passageiros INT,
    distancia DOUBLE,
    PRIMARY KEY (codigo),
    CONSTRAINT fk_voo_to_piloto FOREIGN KEY (piloto) REFERENCES piloto(codigo)
);

CREATE TABLE milhas (
	cliente INT,
    quantidade INT,
    PRIMARY KEY (cliente),
    CONSTRAINT fk_milhas_to_cliente FOREIGN KEY (cliente) REFERENCES cliente(codigo)
);

CREATE TABLE cliente_voo (
	cliente INT,
    voo INT,
    classe VARCHAR(256),
    PRIMARY KEY (cliente, voo),
    CONSTRAINT fk_clientevoo_to_cliente FOREIGN KEY (cliente) REFERENCES cliente(codigo),
    CONSTRAINT fk_clientevoo_to_voo FOREIGN KEY (voo) REFERENCES voo(codigo)
);
