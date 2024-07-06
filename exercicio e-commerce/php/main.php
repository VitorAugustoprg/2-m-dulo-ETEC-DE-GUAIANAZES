<?php
require_once 'Celular.php';
require_once 'Panela.php';

$poco = new Celular('01', 'Novo', '01', '1.400,00', 'Xiaomi', 'Poco 5x', 'Azul', '264GB', 'Android');
$poco->cadastrar();
$poco->exibir();

$panela = new Panela('10', 'azul', 'frigideira', '400,00');
$panela->cadastrar();
$panela->exibir();
?>
