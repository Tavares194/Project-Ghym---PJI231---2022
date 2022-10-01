drop database IF EXISTS GHYM;
create database GHYM;
use GHYM;

create table Marca(
cod_marca int NOT NULL,
nome varchar(20),
PRIMARY KEY (cod_marca)
);

insert into Marca values
(1, 'INTEL'),
(2, 'AMD'),
(3, 'NVIDIA'),
(4, 'GIGABYTE'),
(5, 'ASUS'),
(6, 'PCEYES'),
(7, 'MSI'),
(8, 'HyperX'),
(9, 'XPG'),
(10, 'GALAX'),
(11, 'AFOX'),
(12, 'Powercolor'),
(13, 'Zotac'),
(14, 'EVGA'),
(15, 'Sapphire'),
(16, 'ASRock'),
(17, 'MAXSUN'),
(18, 'Colorfire'),
(19, 'XFX'),
(20, 'Gainward'),
(21, 'Corsair'),
(22, 'Crucial'),
(23, 'ADATA'),
(24, 'TeamGroup'),
(25, 'Kingston'),
(26, 'Husky Gaming');

-- NOME DA TABELA NÃO PODE SER 'CPU', POIS É UMA PALAVRA RESERVADA
create table Processador(
cod_cpu int NOT NULL,
id_marca int NOT NULL,
nome varchar(60),
clock float,
turbo float,
cores int,
threads int,
mark int,
TDP int,
arquitetura varchar(15),
preco float,
imagem varchar(50),
PRIMARY KEY (cod_cpu),
FOREIGN KEY (id_marca) REFERENCES Marca(cod_marca)
);

insert into Processador (cod_cpu, id_marca, nome, clock, turbo, cores, threads, mark, TDP, arquitetura, preco) values
(1, 1, 'I5-2400', 3.10, 3.40, 4, 4, 3843, 35, 'LGA1155', 399.99),
(2, 2, 'Ryzen 5 5600G', 3.90, 4.20, 8, 6, 19821, 65, 'AM4', 1299.99),
(3, 1, 'I5-4590T', 2.00, 3.00, 4, 4, 3984, 35, 'LGA1150', 514.99),
(4, 1, 'I3-4360', 3.70, 3.70, 2, 4, 3699, 54, 'LGA1150', 249.99),
(5, 1, 'I7-4790S', 3.20, 4.00, 4, 8, 6891, 65, 'LGA1150', 879.99),
(6, 1, 'I7-4770S', 3.10, 3.90, 4, 8, 6832, 65, 'LGA1150', 679.99),
(7, 1, 'I5-8500', 3.00, 4.10, 6, 6, 8234, 65, 'LGA1151', 814.99),
(8, 1, 'I3-9100', 3.60, 4.20, 4, 4, 5465, 65, 'LGA1151', 539.99),
(9, 2, 'Ryzen 3 3200G', 3.60, 4.00, 4, 4, 3878, 65, 'AM4', 569.99),
(10, 2, 'Ryzen 5 3600', 3.60, 4.20, 6, 12, 6214, 65, 'AM4', 879.99),
(11, 1, 'I7-10700', 2.90, 4.80, 8, 16, 16886, 65, 'LGA1200', 1899.99),
(12, 1, 'I3-12300', 3.50, 4.40, 4, 8, 14955, 70, 'LGA1700', 614.99),
(13, 1, 'I5-6500', 3.20, 3.60, 4, 4, 5655, 65, 'LGA1151', 679.99),
(14, 2, 'Ryzen 7 3700X', 3.60, 4.40, 8, 16, 22731, 65, 'AM4', 879.99),
(15, 2, 'Ryzen 9 5900X', 3.70, 4.80, 12, 24, 39348, 105, 'AM4', 2899.99);

create table GPU(
cod_gpu int NOT NULL,
id_marca int NOT NULL,
nome varchar(60),
clock int,
mark int,
VRAM int,
TDP int,
preco float,
imagem varchar(50),
PRIMARY KEY (cod_gpu),
FOREIGN KEY (id_marca) REFERENCES Marca(cod_marca)
);

insert into GPU (cod_gpu, id_marca, nome, clock, mark, VRAM, TDP, preco) values
(1, 4, 'GeForce GTX 1660 OC', 1530, 11707, 6, 125, 1799.99),
(2, 6, 'Radeon RX 550', 1183, 2722, 4, 80, 899.99),
(3, 4, 'GeForce RTX 3090', 1395, 26488, 24, 350, 14699.99),
(4, 5, 'Radeon RX 6900 XT', 1900, 25708, 16, 300, 16999.99),
(5, 20, 'GeForce RTX 3060TI', 1410, 20291, 8, 2000, 4399.99),
(6, 19, 'Radeon RX 6700 XT', 2457, 18894, 12, 230, 12255.62),
(7, 7, 'Radeon RX 5700 XT', 1730, 16898, 8, 225, 12999.99),
(8, 5, 'GeForce RTX 2060', 1365, 13964, 6, 160, 5543.90),
(9, 4, 'GeForce RTX 3080 Aorus Xtreme', 1440, 25024, 10, 320, 10299.99),
(10, 10, 'GeForce GTX 1650', 1410, 7817, 4, 185, 2799.99),
(11, 6, 'Radeon RX 580', 1257, 7797, 8, 185, 1630.60),
(12, 11, 'Geforce GT 610', 810, 302, 2, 20, 229.99),
(13, 11, 'Radeon R5 220', 1066, 135, 1, 20, 259.99),
(14, 20, 'Geforce GT 710', 800, 637, 2, 25, 399.99),
(15, 7, 'Geforce GT 1030', 1250, 2539, 2, 30, 899.99);

create table RAM(
cod_ram int NOT NULL,
id_marca int NOT NULL,
nome varchar(60),
frequencia int,
capacidade int,
tipo varchar(5),
preco float,
PRIMARY KEY (cod_ram),
FOREIGN KEY (id_marca) REFERENCES Marca(cod_marca)
);

insert into RAM values
(1, 8, 'Fury', 2666, 8, 'DDR4', 215.99),
(2, 9, 'Gammix D45', 3200, 16, 'DDR4', 474.90),
(3, 21, 'Vengeance LPX', 2666, 8, 'DDR4', 352.99),
(4, 21, 'Vengeance', 2400, 8, 'DDR4', 329.99),
(5, 21, 'Value Select', 1600, 8, 'DDR3L', 329.99),
(6, 21, 'Value Select', 2133, 8, 'DDR4', 319.99),
(7, 26, 'Gamer Husky', 2666, 4, 'DDR4', 139.99),
(8, 26, 'Gamer Husky', 2666, 8, 'DDR4', 189.99),
(9, 26, 'Husky Technologies', 2666, 4, 'DDR4', 142.99),
(10, 9, 'Spectryx D45G', 3600, 8, 'DDR4', 399.99),
(11, 9, 'Spectryx D41 TUF', 3200, 8, 'DDR4', 376.99),
(12, 22, 'Ballistix White', 3000, 8, 'DDR4', 352.99),
(13, 22, 'Ballistix Black', 3200, 8, 'DDR4', 352.99),
(14, 25, 'Fury Beast', 3000, 8, 'DDR4', 411.99),
(15, 25, 'Fury Beast Black', 2666, 8, 'DDR4', 295.99);

create table Tipo(
cod_tipo int NOT NULL,
nome varchar(40),
PRIMARY KEY (cod_tipo)
);

insert into Tipo values
(1, 'Jogos'),
(2, 'Editor de imagem'),
(3, 'Editor de vídeo'),
(4, 'Compilador'),
(5, 'Entretenimento'),
(6, 'Empresarial'),
(7, 'Monitorador de atividades'),
(8, 'Navegadores'),
(9, 'Limpador de arquivos'),
(10, 'Antivírus');

create table RecomendacaoCpu(
cod_reccpu int NOT NULL,
coremin int,
corerec int,
clockmin float,
clockrec float,
PRIMARY KEY (cod_reccpu)
);

insert into RecomendacaoCpu values
(1, 2, 4, 2.00, 3.10),
(2, 4, 6, 3.10, 3.60),
(3, 4, 4, 2.60, 3.20),
(4, 4, 4, 3.20, 3.40),
(5, 2, 4, 2.80, 3.00),
(6, 4, 4, 2.60, 3.40),
(7, 4, 4, 3.10, 3.50),
(8, 2, 4, 2.10, 3.30),
(9, 2, 4, 2.60, 3.10),
(10, 4, 4, 3.10, 3.70);

create table RecomendacaoGpu(
cod_recgpu int NOT NULL,
vrammin int,
vramrec int,
clockmin int,
clockrec int,
PRIMARY KEY (cod_recgpu)
);

insert into RecomendacaoGpu values
(1, 2, 4, 900, 1100),
(2, 4, 6, 1100, 1850),
(3, 2, 4, 800, 1300),
(4, 4, 6, 1050, 1400),
(5, 2, 4, 760, 1250),
(6, 4, 6, 830, 1500),
(7, 2, 4, 800, 1120),
(8, 2, 4, 790, 1260),
(9, 4, 6, 900, 1600),
(10, 2, 4, 800, 1260);

create table RecomendacaoRam(
cod_recram int NOT NULL,
capacidademin int,
capacidaderec int,
PRIMARY KEY (cod_recram)
);

insert into RecomendacaoRam values
(1, 4, 8),
(2, 2, 4),
(3, 6, 8),
(4, 4, 8),
(5, 2, 4);

create table Software(
cod_soft int NOT NULL,
id_recomendacaoram int NOT NULL,
id_recomendacaogpu int NOT NULL,
id_recomendacaocpu int NOT NULL,
id_tipo int NOT NULL,
nome_soft varchar(80),
imagem varchar(50),
PRIMARY KEY (cod_soft),
FOREIGN KEY (id_recomendacaoram) REFERENCES RecomendacaoRam(cod_recram),
FOREIGN KEY (id_recomendacaogpu) REFERENCES RecomendacaoGpu(cod_recgpu),
FOREIGN KEY (id_recomendacaocpu) REFERENCES RecomendacaoCpu(cod_reccpu),
FOREIGN KEY (id_tipo) REFERENCES Tipo(cod_tipo)
);

insert into Software (cod_soft, id_recomendacaoram, id_recomendacaogpu, id_recomendacaocpu, id_tipo, nome_soft) values
(1, 1, 2, 7, 1, 'God of War'),
(2, 1, 5, 1, 2, 'Adobe Photoshop'),
(3, 1, 7, 8, 1, 'Counter-Strike Global Offensive'),
(4, 3, 1, 2, 1, 'Ghost of Tsushima'),
(5, 1, 1, 4, 1, 'GTA V'),
(6, 1, 2, 5, 1, 'Marvels Spider-Man Miles Morales'),
(7, 1, 9, 5, 1, 'Marvels Avenger'),
(8, 1, 6, 3, 1, 'Dark Souls III'),
(9, 1, 3, 9, 1, 'Jurassic World Evolution 2'),
(10, 1, 3, 1, 1, 'Need for Speed Heat'),
(11, 1, 5, 8, 1, 'Fortnite'),
(12, 1, 3, 10, 1, 'Genshin Impact'),
(13, 1, 8, 2, 3, 'Adobe Premiere Pro'),
(14, 1, 3, 1, 7, 'Wireshark'),
(15, 1, 3, 1, 4, 'MySQL'),
(16, 1, 3, 2, 4, 'Visual Studio'),
(17, 1, 3, 1, 4, 'Eclipse'),
(18, 1, 3, 1, 8, 'Chrome'),
(19, 1, 10, 1, 7, 'Geforce Experience'),
(20, 1, 3, 1, 6, 'Office 365');

-- TELA DE COMPARAÇÃO DE CPU
SELECT * FROM Processador WHERE cod_cpu = 1;
SELECT * FROM Processador WHERE cod_cpu = 2;

-- TELA DE COMPARAÇÃO DE GPU
SELECT * FROM GPU WHERE cod_gpu = 1;
SELECT * FROM GPU WHERE cod_gpu = 2;

-- EXEMPLO DE SOFTWARE PARA RECOMENDAÇÃO: GOD OF WAR
-- TELA DE RECOMENDAÇÃO DE UM SOFTWARE ESPECIFICO
CREATE VIEW rec_soft AS
SELECT cod_soft, nome_soft, capacidademin, coremin, c.clockmin AS clockmin_cpu, g.clockmin AS clockmin_gpu, vrammin, capacidaderec, corerec, c.clockrec AS clockrec_cpu, g.clockrec AS clockrec_gpu, vramrec
FROM Software
INNER JOIN RecomendacaoRam
ON id_recomendacaoram = cod_recram
INNER JOIN RecomendacaoCpu c
ON id_recomendacaocpu = cod_reccpu
INNER JOIN RecomendacaoGpu g
ON id_recomendacaogpu = cod_recgpu;

-- TELAS DE HARDWARES PARA UMA CONFIGURAÇÃO ESPECÍFICA
-- EXEMPLO DE RECOMENDAÇÃO: REQUISITOS MÍNIMOS PARA GOD OF WAR

-- CONSULTA SEM WHERE: MEMÓRIAS QUE SE ENCAIXAM NA RECOMENDAÇÃO MÍNIMA DO EXEMPLO EM ORDEM CRESCENTE DE CAPACIDADE EM GBS
SELECT m.nome AS marca, r.nome AS memoria_ram, capacidade, frequencia, tipo, preco  
FROM RAM r
INNER JOIN Marca m ON m.cod_marca = r.id_marca
INNER JOIN RecomendacaoRam ON capacidade >= capacidademin
INNER JOIN Software ON id_recomendacaoram = cod_recram and cod_soft = 1
ORDER BY capacidade ASC;

-- CONSULTA COM WHERE: MEMÓRIAS QUE SE ENCAIXAM NA RECOMENDAÇÃO MÍNIMA DO EXEMPLO EM ORDEM CRESCENTE DE CAPACIDADE EM GBS
CREATE VIEW recmin_ram AS
SELECT m.nome AS marca, r.nome AS memoria_ram, capacidade, frequencia, tipo, preco  
FROM RAM r
INNER JOIN Marca m
ON cod_marca = id_marca
ORDER BY capacidade ASC;

-- PROCESSADORES QUE SE ENCAIXAM NA RECOMENDAÇÃO MÍNIMA DO EXEMPLO EM ORDEM CRESCENTE DE CORES
CREATE VIEW recmin_cpu AS
SELECT m.nome AS marca, p.nome AS processador, cores, threads, clock, turbo, mark, TDP, arquitetura, preco  
FROM Processador p
INNER JOIN Marca m
ON cod_marca = id_marca
ORDER BY cores ASC;

-- PLACAS DE VÍDEO QUE SE ENCAIXAM NA RECOMENDAÇÃO MÍNIMA DO EXEMPLO EM ORDEM CRESCENTE DE VRAM EM GBS
CREATE VIEW recmin_gpu AS
SELECT m.nome AS marca, g.nome AS gpu, vram, clock, mark, TDP, preco  
FROM GPU g
INNER JOIN Marca m
ON cod_marca = id_marca
ORDER BY vram ASC;

-- TELAS DE HARDWARES PARA UMA CONFIGURAÇÃO ESPECÍFICA
-- EXEMPLO DE MÚLTIPLAS ESCOLHAS DE SOFTWARE CONTENDO TODAS AS RECOMENDAÇÕES
-- UTILIZAÇÃO DA FUNÇÃO MAX PARA ATENDER AS REQUISIÇÕES FEITAS
-- POR EXEMPLO: UM USUÁRIO ESCOLHE O CHROME E O GOW, SENDO ASSIM, APARECERÁ A RECOMENDAÇÃO MÍNIMA QUE MAIS EXIGE HARDWARE, POIS PRECISARÁ ATENDER TODOS OS SOFTWARES

-- CONFIGURAÇÃO MÍNIMA DE SOFTWARES ESCOLHIDOS
CREATE OR REPLACE VIEW recmin_softs AS
SELECT cod_soft, capacidademin, coremin, vrammin
FROM Software
INNER JOIN RecomendacaoRam
ON id_recomendacaoram = cod_recram
INNER JOIN RecomendacaoCpu c
ON id_recomendacaocpu = cod_reccpu
INNER JOIN RecomendacaoGpu g
ON id_recomendacaogpu = cod_recgpu;

-- CONFIGURAÇÃO RECOMENDADA DE SOFTWARES ESCOLHIDOS
CREATE OR REPLACE VIEW recs_softs AS
SELECT cod_soft, capacidaderec, corerec, vramrec
FROM Software
INNER JOIN RecomendacaoRam
ON id_recomendacaoram = cod_recram
INNER JOIN RecomendacaoCpu c
ON id_recomendacaocpu = cod_reccpu
INNER JOIN RecomendacaoGpu g
ON id_recomendacaogpu = cod_recgpu;

SELECT * FROM rec_soft
WHERE cod_soft IN (1);

SELECT * FROM recmin_ram
WHERE capacidade >= 4;

SELECT * FROM recmin_cpu
WHERE cores >= 4 and clock >= 3.1;

SELECT * FROM recmin_gpu
WHERE vram >= 8;

SELECT max(capacidademin), max(coremin), max(vrammin)
FROM recmin_softs
WHERE cod_soft IN (1,3,4);

SELECT max(capacidaderec), max(corerec), max(vramrec)
FROM recs_softs
WHERE cod_soft IN (1,3,4);