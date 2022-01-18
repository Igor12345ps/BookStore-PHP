CREATE SCHEMA IF NOT EXISTS `OurBookshelf` DEFAULT CHARACTER SET utf8 ; 

USE `OurBookshelf` ; 

----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Cliente` (
    `idCliente` INT NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(45) NOT NULL,
    `Sobrenome` VARCHAR(45) NOT NULL,
    `telefone` VARCHAR(45) NOT NULL,
    `CPF` VARCHAR(14) NOT NULL,
    `CEP` VARCHAR(9) NOT NULL,
	`numero` INT(4) NOT NULL,
    `login` VARCHAR(45) NOT NULL,
    `senha` VARCHAR(45) NOT NULL,
    PRIMARY KEY (idCliente)
)  ENGINE=INNODB; 

Insert into Cliente(nome, Sobrenome, telefone, CPF, CEP, numero, login, senha)
values('Cleiton', 'Xavier', '983639385', '7475641232', '0800743663', 5698, 'Cleiton132', '3421'),
('Ronaldo', 'Agnaldo', '973552984', '5565547538', 5698, '0800737635', 'RonaldoA', '5534'),
('Rogerio', 'Nascimento', '966456372', '5366447875', '0800745655', 5698, 'Rogerio', '4365'),
('Arnaldo', 'Ednaldo', '983597487', '5475688966', '080084773', 5698, 'Arnaldo321', '9976'),
('Romulo', 'Algusto', '957478939', '92873628763', '0800994883', 5698, 'Romulo','9857'), 
('Cláudio', 'Manoel', '9090-9090', '555.555.555-34', '08140-189',90, 'claudinho@bochecha.com','claudinho123'), 
('Manoel', 'Cláudio', '2020-2020', '08909-090', '333.333.333-22',77, 'seumanu@uol.com.br', 'seumanu123'), 
('Franciele', 'Jéssica', '3030-3030', '123.321.456-65', '18303-033',33, 'donafrancie@outlook.com', 'francielinha123'), 
('José', 'Benedito', '2525-5252','999.090.989-78', '08999-888', 98, 'seuze@cps.gov.br', 'seuzeinho123'), 
('Júlio', 'Na Gaita', '0321-0321', '980.476.710-49', '05491-100', 20, 'juliococorico@gmail.com','julinho123');   


----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Categoria` ( 
  `IdCategoria` INT NOT NULL AUTO_INCREMENT, 
  `nome` VARCHAR(45) NOT NULL, 
  `descricao` VARCHAR(45) NOT NULL, 
  PRIMARY KEY (`IdCategoria`)) 
ENGINE = InnoDB; 

Insert into Categoria(nome, descricao)
Values('Livros','Livros em Geral'),
('Bebidas - Sucos', 'Sucos'),
('Bebidas - Refrigerantes', 'Refrigerantes'),
('Bebidas - Alcoólicas', 'Alcoolizadas'),
('Pizzas - Doces', 'Pizzas doces'),
('Pizzas - Salgadas', 'Pizzas salgadas'),
('Esfihas - Abertas', 'Esfihas abertas'),
('Esfihas - Fechadas', 'Esfihas fechadas'),
('Doces', ' Doces Diversos'),
('Salgados', 'Salgados Diversos');

----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Fabricante_Editora` ( 
  `idFabricante_Editora` INT NOT NULL AUTO_INCREMENT, 
  `nome` VARCHAR(45) NOT NULL, 
  `CPF_CNPJ` VARCHAR(45) NOT NULL, 
  `endereco` VARCHAR(45) NOT NULL, 
  `telefone` VARCHAR(45) NOT NULL, 
  PRIMARY KEY (`idFabricante_Editora`)) 
ENGINE = InnoDB; 

Insert into Fabricante_Editora(nome, CPF_CNPJ, endereco, telefone)
values('Luxe', '88466483621', 'Rua inacio dos camundongos Nº32', '25469876'),
('Davins', '11756754341', 'Rua inacio dos camundongos Nº89', '254743276'),
('Torres', '11899377331', 'Rua inacio dos camundongos Nº45', '254633856'),
('Mornings', '11466546521', 'Rua inacio dos camundongos Nº91', '25477746'),
('Serris', '114755466234', 'Rua inacio dos camundongos Nº63', '25435526'),
('Doces da Tia Amelia', '114755466456', 'Rua inacio dos camundongos Nº68', '25435526'),
('SorriDoces', '114755466839', 'Rua inacio dos camundongos Nº77', '25435526'),
('Massa Fresca Brasil', '114758745241', 'Rua inacio dos camundongos Nº97', '25435526'),
('o Alfinete Dourado', '114734953721', 'Rua inacio dos camundongos Nº2045', '25435526'),
('Massas Brasil LTDA.', '114834756934', 'Rua inacio dos camundongos Nº90', '25435526');

----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Produtos` ( 
  `idProdutos` INT NOT NULL AUTO_INCREMENT, 
  `nome` VARCHAR(45) NOT NULL, 
  `descricao` VARCHAR(45) NOT NULL, 
  `valor_unitario` VARCHAR(45) NOT NULL, 
  `Categoria_IdCategoria` INT NOT NULL, 
  `Fabricante_Editora_idFabricante_Editora` INT NOT NULL, 
  PRIMARY KEY (`idProdutos`, `Categoria_IdCategoria`, `Fabricante_Editora_idFabricante_Editora`)); 

insert into Produtos(nome, descricao, valor_unitario, Categoria_IdCategoria, Fabricante_Editora_idFabricante_Editora)
values('Norrit', 'Livros em Geral', '50.00', 1, 3),
('Norbit', 'Livros em Geral', '25.00', 1, 4),
('Coca-Cola', 'Refrigerantes', '05.00', 5, 1),
('Sprit', 'Refrigerantes', '04.00', 5, 1),
('Pizza de pepperoni', 'pizza de pepperoni', '40.00', 5, 1),
('Pizza de mussarela', 'pizza de mussarela', '40.00', 5, 1),
('Pizza de frango com catupiry', 'Pizza de frango com catupiry', '40.00', 5, 1),
('Vinho', 'Vinho', '60.00', 5, 1),
('Sprit', 'Refrigerantes', '40.00', 5, 1),
('Tang Uva', 'Sucos', '02.00', 2, 2);

 ---------------------------------------------------------------------------- 
CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Cargo` ( 
  `idCargo` INT NOT NULL AUTO_INCREMENT, 
  `nome` VARCHAR(45) NOT NULL, 
  `descricao` VARCHAR(45) NOT NULL, 
  `valor_padrao` decimal(6,2) NOT NULL, 
  PRIMARY KEY (`idCargo`)) 
ENGINE = InnoDB; 

insert into Cargo(nome, descricao, valor_padrao)
values('Gerente', 'organizador', 2000.00),
('Vendedor', 'Responsavel pelas vendas','1500.00'),
('Supervisor', 'supervisação',' 2100.00'),
('Organizador', 'organização','1300.00'),
('Operador de Caixa', 'Conduz o Caixa','1200.00'),
('Analista de Sistemas', 'Analista de sistemas de TI',' 2300.00'),
('Desenvolvedor Junior', 'Desenvolvedor junior',' 1800.00'),
('Desenvolvedor Pleno', 'Desenvolvedor pleno',' 3000.00'),
('Desenvolvedor Senior', 'Desenvolvedor senior',' 5000.00'),
('Analista de Dados', 'Análise de dados',' 3300.00');

----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Funcionario` ( 
  `idFuncionario` INT NOT NULL AUTO_INCREMENT, 
  `nome` VARCHAR(45) NOT NULL, 
  `CPF_CNPJ` VARCHAR(45) NOT NULL, 
  `endereco` VARCHAR(45) NOT NULL, 
  `telefone` VARCHAR(45) NOT NULL, 
  `login` VARCHAR(45) NOT NULL, 
  `senha` VARCHAR(45) NOT NULL, 
  `valor_adicional` decimal(6,2),  
  `Cargo_idCargo` INT NOT NULL, 
  PRIMARY KEY (`idFuncionario`, `Cargo_idCargo`)); 

insert into Funcionario(nome, CPF_CNPJ, endereco, telefone, login, senha, valor_adicional, Cargo_idCargo)
values('Carlos', '8499388448', 'Rua comendador ermelino Nº43', '988768743', 'Carlos32', '4356', 1500.00, 2),
('Dimas Paulo', '84993884764', 'Rua dos barra fundos Nº85', '98775654', 'Josué75', '0988', 150.00, 4),
('Jair Oliveira', '1849375948', 'Rua dos barra fundos Nº88', '98775654', 'Josué76', '0988', 123.00, 0),
('Marco Polo', '1029463982', 'Rua dos barra fundos Nº89', '98775654', 'Josué77', '0988', 800.00, 4),
('Josué Cristiano', '1047294728', 'Rua dos barra fundos Nº99', '98775654', 'Josué78', '0988', 300.00, 5),
('Josué Ribeiro', '1047293826', 'Rua dos barra fundos Nº50', '98775654', 'Josué79', '0988', 150.00, 3),
('Roberto Jonas', '4830217394', 'Rua josué campos Nº81', '98836253', 'Roberto321', '3212', 200.00, 1),
('Aguiar Carlos', '1927384275', 'Rua campos rodrigues Nº08', '987366323', 'Aguiar765', '9077', 100.00, 5),
('Josué Marcos', '3928172839', 'Rua dos barra fundos Nº87', '98775654', 'Josué80', '0988', 12.00, 4),
('Chaves do oito', '84993884543', 'Rua nero osvaldo Nº51', '987635432', 'Chaves42', '9977', 100.00, 3);


----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Estoque` ( 
  `quant_disponivel` DOUBLE NOT NULL, 
  `Produtos_idProdutos` INT NOT NULL, 
  `Produtos_Categoria_IdCategoria` INT NOT NULL, 
  `Produtos_Fabricante_Editora_idFabricante_Editora` INT NOT NULL); 

insert into Estoque(Produtos_idProdutos, quant_disponivel, Produtos_Categoria_IdCategoria, Produtos_Fabricante_Editora_idFabricante_Editora)
values(1, 30, 3, 4),
(2, 34, 2, 1),
(4, 24, 1, 3),
(5, 28, 4, 3),
(3, 27, 3, 0),
(2, 26, 2, 1),
(1, 25, 1, 2),
(0, 28, 0, 3),
(3, 21, 0, 4),
(3, 64, 5, 5);


----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Vendas` ( 
  `idVendas` INT NOT NULL AUTO_INCREMENT, 
  `data` DATETIME(6) NOT NULL, 
  `quant_prod` DOUBLE NULL, 
  `Cliente_idCliente` INT NOT NULL, 
  `Funcionario_idFuncionario` INT NOT NULL, 
  `Estoque_Produtos_idProdutos` INT NOT NULL, 
  `Estoque_Produtos_Categoria_IdCategoria` INT NOT NULL, 
  `Estoque_Produtos_Fabricante_Editora_idFabricante_Editora` INT NOT NULL, 
  PRIMARY KEY (`idVendas`, `Cliente_idCliente`, `Funcionario_idFuncionario`, `Estoque_Produtos_idProdutos`, `Estoque_Produtos_Categoria_IdCategoria`, `Estoque_Produtos_Fabricante_Editora_idFabricante_Editora`)); 

insert into Vendas(data, quant_prod, Cliente_idCliente, Funcionario_idFuncionario, Estoque_Produtos_idProdutos, Estoque_Produtos_Categoria_IdCategoria, Estoque_Produtos_Fabricante_Editora_idFabricante_Editora)
values('2021-08-09 13:24:54', 2, 1, 4, 5, 3, 2),
('2021-02-05 20:40:40', 5, 1, 1, 5, 2, 3),
('2021-06-01 15:50:52', 1, 3, 4, 1, 5, 4),
('2021-01-01 14:40:50', 4, 4, 4, 5, 4, 3),
('2021-01-01 14:40:50', 0, 1, 2, 3, 4, 3),
('2021-01-01 14:40:50', 4, 4, 3, 5, 0, 3),
('2021-01-01 14:40:50', 3, 4, 2, 3, 2, 3),
('2021-01-01 14:40:50', 0, 2, 4, 2, 4, 3),
('2021-01-01 14:40:50', 4, 3, 5, 4, 1, 3),
('2021-01-01 17:00:50', 6, 5, 2, 1, 5, 3);

  
----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Reserva_Livro` ( 
  `idReserva_Livro` INT NOT NULL AUTO_INCREMENT, 
  `data_retirada` DATETIME(6) NOT NULL, 
  `data_devolucao` DATETIME(6) NOT NULL, 
  `Reserva_Livrocol` VARCHAR(45) NULL, 
  `Cliente_idCliente` INT NOT NULL, 
  `Funcionario_idFuncionario` INT NOT NULL, 
  `Funcionario_Cargo_idCargo` INT NOT NULL, 
  `Estoque_Produtos_idProdutos` INT NOT NULL, 
  `Estoque_Produtos_Categoria_IdCategoria` INT NOT NULL, 
  `Estoque_Produtos_Fabricante_Editora_idFabricante_Editora` INT NOT NULL, 
  PRIMARY KEY (`idReserva_Livro`, `Cliente_idCliente`, `Funcionario_idFuncionario`, `Funcionario_Cargo_idCargo`, `Estoque_Produtos_idProdutos`, `Estoque_Produtos_Categoria_IdCategoria`, `Estoque_Produtos_Fabricante_Editora_idFabricante_Editora`)); 
   
insert into Reserva_Livro(data_retirada, data_devolucao, Reserva_Livrocol, Cliente_idCliente, Funcionario_idFuncionario, 
Funcionario_Cargo_idCargo, Estoque_Produtos_idProdutos, Estoque_Produtos_Categoria_IdCategoria, Estoque_Produtos_Fabricante_Editora_idFabricante_Editora)
values('2021-01-03 14:00:00', '2021-02-03 14:00:59', 'Norrit', 1, 4, 2, 5, 2, 1),
('2021-02-03 12:30:00', '2021-03-03 12:30:59', 'Norbit', 2, 2, 1, 4, 3, 5),
('2021-02-06 20:01:00', '2021-01-01 20:00:59', 'Norrit', 3, 1, 5, 3, 1, 5),
('2021-05-10 14:00:00', '2021-05-10 14:59:59', 'Norbit', 4, 2, 5, 2, 4, 3),
('2021-07-11 15:00:00', '2021-04-15 15:59:59', 'Norbit', 6, 5, 2, 1, 5, 3),
('2021-04-15 16:00:00', '2021-03-18 16:59:59', 'Norbit', 4, 2, 5, 2, 4, 3),
('2021-08-17 17:00:00', '2021-02-22 17:59:59', 'Norbit', 0, 2, 4, 2, 4, 3),
('2021-02-24 18:00:00', '2021-01-11 18:59:59', 'Norbit', 4, 2, 5, 2, 4, 3),
('2021-06-27 19:00:00', '2021-07-28 19:59:59', 'Norbit', 4, 2, 5, 2, 4, 3),
('2021-01-01 11:00:00', '2021-08-13 11:00:59', 'Norrit', 5, 1, 1, 5, 2, 3);
    
    
    