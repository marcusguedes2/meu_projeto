

CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(100) NOT NULL
 );
 
 INSERT INTO usuarios (id, nome, email, senha) VALUES ('1','marcus','marcus@gmail.com','1234');


CREATE TABLE projetos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    responsavel_id INT,
    FOREIGN KEY (responsavel_id) REFERENCES usuarios(id)
);





CREATE TABLE tarefas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    prioridade VARCHAR (200) NOT NULL,
    situacao VARCHAR (200),
    projeto_id INT,
    FOREIGN KEY (projeto_id) REFERENCES projetos(id)
);
