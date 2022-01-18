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
values ('', '', '', '', '', 0, '','');   


----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Categoria` ( 
  `IdCategoria` INT NOT NULL AUTO_INCREMENT, 
  `nome` VARCHAR(45) NOT NULL, 
  `descricao` VARCHAR(45) NOT NULL, 
  PRIMARY KEY (`IdCategoria`)) 
ENGINE = InnoDB; 

Insert into Categoria(nome, descricao)
Values('','');

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
values('', '', '', '');

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
values('', '', '', 0, 0);

 ---------------------------------------------------------------------------- 
CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Cargo` ( 
  `idCargo` INT NOT NULL AUTO_INCREMENT, 
  `nome` VARCHAR(45) NOT NULL, 
  `descricao` VARCHAR(45) NOT NULL, 
  `valor_padrao` decimal(6,2) NOT NULL, 
  PRIMARY KEY (`idCargo`)) 
ENGINE = InnoDB; 

insert into Cargo(nome, descricao, valor_padrao)
values('', '', 0.0);

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
values('', '', '', '', '', '', 0.0, 0);


----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Estoque` ( 
  `quant_disponivel` DOUBLE NOT NULL, 
  `Produtos_idProdutos` INT NOT NULL, 
  `Produtos_Categoria_IdCategoria` INT NOT NULL, 
  `Produtos_Fabricante_Editora_idFabricante_Editora` INT NOT NULL, 
  PRIMARY KEY (`Produtos_idProdutos`, `Produtos_Categoria_IdCategoria`, `Produtos_Fabricante_Editora_idFabricante_Editora`)); 

insert into Estoque(Produtos_idProdutos, quant_disponivel, Produtos_Categoria_IdCategoria, Produtos_Fabricante_Editora_idFabricante_Editora)
values(0, 0.0, 0, 0);


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
values('2021-01-01 00:00:00', 0.0, 0, 0, 0, 0, 0);

  
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
values('2021-01-01 00:00:00', '2021-01-01 00:00:00', '', 0, 0, 0, 0, 0, 0);
    
    
    