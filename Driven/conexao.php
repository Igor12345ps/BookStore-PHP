<?php
/* Variáveis para conexão PDO */
$base_dados = 'ourbookshelf';
$usuario_bd = 'root';
$senha_bd   = '';
$host_db    = 'localhost:3636';


$pdo = new PDO("mysql:host=$host_db;dbname=$base_dados",$usuario_bd,$senha_bd);		
?>