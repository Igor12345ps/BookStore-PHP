CREATE SCHEMA IF NOT EXISTS `OurBookshelf` DEFAULT CHARACTER SET utf8 ;
USE `OurBookshelf` ;


CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Cliente` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  `CPF` VARCHAR(45) NOT NULL,
  `login` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Categoria` (
  `IdCategoria` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IdCategoria`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Fabricante_Editora` (
  `idFabricante_Editora` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `CPF_CNPJ` VARCHAR(45) NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idFabricante_Editora`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Produtos` (
  `idProdutos` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  `valor_unitario` VARCHAR(45) NOT NULL,
  `Categoria_IdCategoria` INT NOT NULL,
  `Fabricante_Editora_idFabricante_Editora` INT NOT NULL,
  PRIMARY KEY (`idProdutos`, `Categoria_IdCategoria`, `Fabricante_Editora_idFabricante_Editora`));
  
  Alter table `OurBookshelf`.`Produtos`
  Add CONSTRAINT `fk_Produtos_Categoria`
    FOREIGN KEY (`Categoria_IdCategoria`)
    REFERENCES `OurBookshelf`.`Categoria` (`IdCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  Add CONSTRAINT `fk_Produtos_Fabricante_Editora1`
    FOREIGN KEY (`Fabricante_Editora_idFabricante_Editora`)
    REFERENCES `OurBookshelf`.`Fabricante_Editora` (`idFabricante_Editora`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Cargo` (
  `idCargo` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  `valor_padrao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCargo`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Funcionario` (
  `idFuncionario` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `CPF_CNPJ` VARCHAR(45) NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `login` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `valor_adicional` VARCHAR(45) NULL,
  `Cargo_idCargo` INT NOT NULL,
  PRIMARY KEY (`idFuncionario`, `Cargo_idCargo`));
  
  ALTER TABLE `OurBookshelf`.`Funcionario`
  ADD CONSTRAINT `fk_Funcionario_Cargo1`
    FOREIGN KEY (`Cargo_idCargo`)
    REFERENCES `OurBookshelf`.`Cargo` (`idCargo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;



CREATE TABLE IF NOT EXISTS `OurBookshelf`.`Estoque` (
  `quant_disponivel` DOUBLE NOT NULL,
  `Produtos_idProdutos` INT NOT NULL,
  `Produtos_Categoria_IdCategoria` INT NOT NULL,
  `Produtos_Fabricante_Editora_idFabricante_Editora` INT NOT NULL,
  PRIMARY KEY (`Produtos_idProdutos`, `Produtos_Categoria_IdCategoria`, `Produtos_Fabricante_Editora_idFabricante_Editora`));
  
  ALTER TABLE `OurBookshelf`.`Estoque`
  ADD CONSTRAINT `fk_Estoque_Produtos1`
    FOREIGN KEY (`Produtos_idProdutos` , `Produtos_Categoria_IdCategoria` , `Produtos_Fabricante_Editora_idFabricante_Editora`)
    REFERENCES `OurBookshelf`.`Produtos` (`idProdutos` , `Categoria_IdCategoria` , `Fabricante_Editora_idFabricante_Editora`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;



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
  
  ALTER TABLE `OurBookshelf`.`Vendas`
  ADD CONSTRAINT `fk_Vendas_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `OurBookshelf`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Vendas_Funcionario1`
    FOREIGN KEY (`Funcionario_idFuncionario`)
    REFERENCES `OurBookshelf`.`Funcionario` (`idFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Vendas_Estoque1`
    FOREIGN KEY (`Estoque_Produtos_idProdutos` , `Estoque_Produtos_Categoria_IdCategoria` , `Estoque_Produtos_Fabricante_Editora_idFabricante_Editora`)
    REFERENCES `OurBookshelf`.`Estoque` (`Produtos_idProdutos` , `Produtos_Categoria_IdCategoria` , `Produtos_Fabricante_Editora_idFabricante_Editora`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;



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
  
  ALTER TABLE `OurBookshelf`.`Reserva_Livro`
  ADD CONSTRAINT `fk_Reserva_Livro_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `OurBookshelf`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Reserva_Livro_Funcionario1`
    FOREIGN KEY (`Funcionario_idFuncionario` , `Funcionario_Cargo_idCargo`)
    REFERENCES `OurBookshelf`.`Funcionario` (`idFuncionario` , `Cargo_idCargo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Reserva_Livro_Estoque1`
    FOREIGN KEY (`Estoque_Produtos_idProdutos` , `Estoque_Produtos_Categoria_IdCategoria` , `Estoque_Produtos_Fabricante_Editora_idFabricante_Editora`)
    REFERENCES `OurBookshelf`.`Estoque` (`Produtos_idProdutos` , `Produtos_Categoria_IdCategoria` , `Produtos_Fabricante_Editora_idFabricante_Editora`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;