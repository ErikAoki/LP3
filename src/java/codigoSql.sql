DROP TABLE Aluno_Disc;
DROP TABLE Coordenador;
DROP TABLE Disciplina;
DROP TABLE Aluno;
DROP TABLE Curso;

CREATE TABLE Aluno (
    cod_aluno INTEGER,
    nome_aluno VARCHAR(50),
    PRIMARY KEY(cod_aluno)
);

CREATE TABLE Curso (
    cod_curso INTEGER,
    nome_curso VARCHAR(50),
    PRIMARY KEY(cod_aluno)
);
-- No caso, uma disciplina pode fazer parte de mais de um curso.
CREATE TABLE Disciplina (
    cod_disciplina INTEGER,
    cod_curso INTEGER,
    nome_disciplina VARCHAR(50),
    PRIMARY KEY(cod_disciplina, cod_curso),
    FOREIGN KEY(cod_curso) REFERENCES Curso(cod_curso)
);
--Um coordenador só pode coordenar um curso.
CREATE TABLE Coordenador (
    cod_coordenador INTEGER,
    nome_coordenador VARCHAR(50),
    cod_curso INTEGER,
    PRIMARY KEY(cod_coordenador),
    FOREIGN KEY(cod_curso) REFERENCES Curso(cod_curso)
);

CREATE TABLE Aluno_Disc (
    cod_aluno INTEGER,
    cod_disciplina INTEGER,
    nota INTEGER,
    PRIMARY KEY (cod_aluno, cod_disciplina),
    FOREIGN KEY (cod_aluno) REFERENCES Aluno(cod_aluno),
    FOREIGN KEY (cod_disciplina) REFERENCES Disciplina(cod_disciplina)
);