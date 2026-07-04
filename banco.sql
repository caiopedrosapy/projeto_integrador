

CREATE DATABASE sistema_saude;
USE sistema_saude;




CREATE TABLE pacientes (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    paciente_nome VARCHAR(100) NOT NULL,
    paciente_rg VARCHAR(20),
    paciente_cpf CHAR(11) NOT NULL UNIQUE
);




CREATE TABLE ubs (
    id_ubs INT AUTO_INCREMENT PRIMARY KEY,
    ubs_cnes CHAR(7) NOT NULL UNIQUE,
    ubs_nome_unidade VARCHAR(100) NOT NULL,
    ubs_logradouro VARCHAR(150)
);





CREATE TABLE nivel_acesso (
    id_nivelacesso INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL
);






CREATE TABLE profissionais (
    id_profissional INT AUTO_INCREMENT PRIMARY KEY,
    id_nivelacesso INT,
    prof_crm_coren VARCHAR(20) UNIQUE,
    prof_especialidade VARCHAR(100),
    prof_nome VARCHAR(100) NOT NULL,

    FOREIGN KEY (id_nivelacesso)
    REFERENCES nivel_acesso(id_nivelacesso)
);





CREATE TABLE exames (
    id_exame INT AUTO_INCREMENT PRIMARY KEY,

    id_paciente INT NOT NULL,
    id_profissional INT NOT NULL,
    id_ubs INT NOT NULL,

    exame_caminho_img VARCHAR(255),
    exame_data DATE,
    exame_score_ia DECIMAL(5,2),
    exame_tipo VARCHAR(50),

    FOREIGN KEY (id_paciente)
    REFERENCES pacientes(id_paciente),

    FOREIGN KEY (id_profissional)
    REFERENCES profissionais(id_profissional),

    FOREIGN KEY (id_ubs)
    REFERENCES ubs(id_ubs)
);





SELECT
    e.id_exame,
    p.paciente_nome,
    pr.prof_nome,
    u.ubs_nome_unidade,
    e.exame_tipo,
    e.exame_data,
    e.exame_score_ia
FROM exames e
INNER JOIN pacientes p
ON e.id_paciente = p.id_paciente

INNER JOIN profissionais pr
ON e.id_profissional = pr.id_profissional

INNER JOIN ubs u
ON e.id_ubs = u.id_ubs;





SELECT
    p.paciente_nome,
    COUNT(e.id_exame) AS quantidade_exames
FROM pacientes p
LEFT JOIN exames e
ON p.id_paciente = e.id_paciente
GROUP BY p.paciente_nome;




SELECT
    exame_tipo,
    AVG(exame_score_ia) AS media_score
FROM exames
GROUP BY exame_tipo;



ALTER TABLE pacientes
ADD prioridade INT NOT NULL DEFAULT 1;
