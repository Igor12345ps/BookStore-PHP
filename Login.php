<?php

?>

<!DOCTYPE html>
<head>
    <link rel="stylesheet" href="assets/css/login.css"/>
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<body>
    <div id="login">
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">


                        <a href="index.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
                        


                        <form id="login-form" class="form" action="./Domain/index.php" method="post">
                            <h3 class="text-center text-secondary">Login</h3>
                            <div class="form-group">
                                <label for="username" class="text-secondary">Email:</label><br>
                                <input type="email" name="email" id="email" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-secondary">Senha:</label><br>
                                <input type="password" name="senha" id="senha" class="form-control" required="required">
                            </div>
                            
                            <!-- <div class="form-group">
                                <label for="remember-me" class="text-secondary"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                <input type="submit" name="submit" class="btn btn-secondary btn-md" value="Entrar">
                                <a href="#" class="text-info alinhar-direita">Cadastre-se</a>
                            </div> -->

                            <div class="row align-items-center justify-content-between">
                                <div class="col-4 espaco-label">
                                    <a href="#" class="text-secondary">Esqueci a senha</a>
                                </div>
                            </div>

                            <div class="row align-items-center justify-content-between">
                                <div class="col-4">
                                    <input type="submit" name="entrar" class="btn btn-info btn-md" value="Entrar">
                                </div>
                                <div class="col-4">
                                    <a href="Cadastro.php" class="text-secondary">Cadastre-se</a>
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