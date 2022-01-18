<?php

?>

<!DOCTYPE html>
<head>
    <link rel="stylesheet" href="assets/css/cadastro.css"/>
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
    <div id="login">
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">

                        <a href="index.html"><i class="fa fa-home espaco-vert" aria-hidden="true"></i> Home</a>
                        

                        <form id="login-form" class="form" action="./Domain/index.php" method="post">
                            <h3 class="text-center text-secondary">Cadastro</h3>
                            <div class="form-group">
                                <label for="username" class="text-secondary">Nome:</label><br>
                                <input type="text" name="nome" id="nome" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label for="username" class="text-secondary">Sobrenome:</label><br>
                                <input type="text" name="sobrenome" id="sobrenome" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label for="username" class="text-secondary">Telefone:</label><br>
                                <input type="tel" name="telefone" id="telefone" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label for="username" class="text-secondary">CPF:</label><br>
                                <input type="text" name="cpf" id="cpf" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label for="username" class="text-secondary">CEP:</label><br>
                                <input type="text" name="cep" id="cep" class="form-control" required="required"> 
                            </div>
                            <div class="form-group">
                                <label for="username" class="text-secondary">Número:</label><br>
                                <input type="text" name="numero" id="numero" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label for="username" class="text-secondary">Email:</label><br>
                                <input type="email" name="email" id="email" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-secondary">Senha:</label><br>
                                <input type="password" name="senha" id="senha" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label for="username" class="text-secondary">Confirmar Senha:</label><br>
                                <input type="password" name="senhaConf" id="senhaConf" class="form-control" required="required">
                            </div>

                            <div class="row align-items-center justify-content-between">
                                <div class="col-4">
                                    <input type="submit" name="enviarCad" class="btn btn-info btn-md" value="Cadastrar" >
                                </div>
                                <div class="col-4">
                                    <a href="Login.php" class="text-secondary">Entrar</a>
                                </div>
                                
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>