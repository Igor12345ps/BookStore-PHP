<?php include('../Driven/conexao.php');?>
<?php

if(isset($_POST['enviarCad'])){
	$nome = $_POST['nome'];
	$sobrenome = $_POST['sobrenome'];
	$telefone = $_POST['telefone'];
	$cpf = $_POST['cpf'];
	$cep = $_POST['cep'];
	$numero = $_POST['numero'];
	$email = $_POST['email'];
	$senha = $_POST['senha'];
	$senhaConf = $_POST['senhaConf'];

	// Prepara o comando a ser executado
	$prepara = $pdo->query("INSERT INTO `cliente` (nome,sobrenome,telefone,CPF,CEP,numero,login,senha) 
	VALUES ( 
		'$nome', 
		'$sobrenome',
		'$telefone',
		'$cpf',
		'$cep',
		'$numero',
		'$email', 
		'$senha'
		)
		");
	// Verifica se o comando foi executado
	if($prepara){
		echo 'Dados enviados à base de dados com sucesso';
		echo '<br><a href="../index.html"><button>Voltar</button>';
	} else{
		echo 'Ocorreu um erro na sua consulta. <br>';
	}
}


if(isset($_POST['entrar'])){
	$login = $_POST['email'];
	$senha = $_POST['senha'];


	$consulta = $pdo->query("SELECT nome, login, senha FROM cliente");
	$count = 0;
	$nome;
	
	while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
		if($login == $linha['login'] && $senha == $linha['senha']){
			$count++;
			$nome = $linha['nome'];
		}
	}

	if($count > 0){
		echo "Bem vindo(a) " . $nome;
	}else{
		header("Location: ../Login.php");
		die();
	}
}




