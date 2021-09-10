DROP table IF EXISTS GAME;
DROP table IF EXISTS PLAYERS;

CREATE TABLE if not exists PLAYERS (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    usuari varchar(30),
	data DATE
);


CREATE TABLE if not exists GAME (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    dau1 integer,
	dau2 integer,
	resultat Boolean, 
	usuariId integer
);

ALTER TABLE GAME
ADD FOREIGN KEY (USUARIID) REFERENCES PLAYERS(id);