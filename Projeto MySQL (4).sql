CREATE TABLE `Alunos` (
  `ID` int PRIMARY KEY,
  `Nome` varchar(100),
  `CPF` varchar(11),
  `Endereco` varchar(500),
  `Telefone` varchar(15)
);

CREATE TABLE `Cursos` (
  `ID` int PRIMARY KEY,
  `Nome` varchar(100),
  `Creditos` varchar(30),
  `Periodos` varchar(30),
  `Professores_ID` int(10),
  `Turma_ID` int(10)
);

CREATE TABLE `Turmas` (
  `ID` int PRIMARY KEY,
  `Sala` varchar(10),
  `Turno` varchar(20),
  `Cadeiras` varchar(50),
  `Mesas` varchar(50),
  `Alunos_ID` int(10)
);

CREATE TABLE `Professores` (
  `ID` int PRIMARY KEY,
  `Nome` varchar(100),
  `CPF` varchar(11),
  `CRP` varchar(25),
  `Cursos_ID` int(10),
  `Turma_ID` int(10)
);

ALTER TABLE `Cursos` ADD FOREIGN KEY (`ID`) REFERENCES `Professores` (`Cursos_ID`);

ALTER TABLE `Alunos` ADD FOREIGN KEY (`ID`) REFERENCES `Turmas` (`Alunos_ID`);

ALTER TABLE `Professores` ADD FOREIGN KEY (`ID`) REFERENCES `Cursos` (`Professores_ID`);

ALTER TABLE `Turmas` ADD FOREIGN KEY (`ID`) REFERENCES `Professores` (`Turma_ID`);

ALTER TABLE `Turmas` ADD FOREIGN KEY (`ID`) REFERENCES `Cursos` (`Turma_ID`);
