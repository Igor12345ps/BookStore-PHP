<?php

?>

<!DOCTYPE html>
<head>
    <link rel="stylesheet" href="Styles1.css"/>
</head>
<body>
<div class="container" >    
    <div class="content">      
      <!--FORMULÁRIO DE LOGIN-->
        <div id="login">
            <form method="post" action=""> 
                <h1>Login</h1> 
                <p> 
                    <label for="email_login">Seu e-mail</label>
                    <input id="email_login" name="email_login" required="required" type="text" placeholder="contato@htmlecsspro.com"/>
                </p>
                
                <p> 
                    <label for="senha_login">Sua senha</label>
                    <input id="senha_login" name="senha_login" required="required" type="password" placeholder="1234" /> 
                </p>
                
                <p> 
                    <input type="checkbox" name="manterlogado" id="manterlogado" value="" /> 
                    <label for="manterlogado">Manter-me logado</label>
                </p>
                
                <p> 
                    <input type="submit" value="Logar" /> 
                </p>
                
                <p class="link">
                    Ainda não tem conta?
                    <a href="Cadastro.php">Cadastre-se</a>
                </p>
            </form>
        </div>
    </div>
</div> 
</body>
</html>