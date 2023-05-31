USE ToodDatabase;

CREATE TABLE dadoTotem (
  idDadosTotem INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dataHora DATETIME NULL,
  qtdRam VARCHAR(45) NULL,
  qtdDisco VARCHAR(45) NULL,
  qtdProcessador VARCHAR(45) NULL
);