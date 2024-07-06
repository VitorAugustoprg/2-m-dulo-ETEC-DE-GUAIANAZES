<?php
require_once 'Produto.php';

class Panela extends Produto {
    private $cor;
    private $modelo;

    public function __construct($cod, $cor, $modelo, $valor) {
        $this->setCod($cod);
        $this->cor = $cor;
        $this->modelo = $modelo;
        $this->setValor($valor);
    }

    public function cadastrar() {
        parent::cadastrar();
        $this->cor = readline('Digite a cor da panela: ');
        $this->modelo = readline('Digite o modelo da panela: ');
    }

    public function exibir() {
        echo $this->getCod() . " " . $this->cor . " " . $this->modelo . " " . $this->getValor() . "\n";
    }

    public function getCor() {
        return $this->cor;
    }

    public function setCor($cor) {
        $this->cor = $cor;
    }

    public function getModelo() {
        return $this->modelo;
    }

    public function setModelo($modelo) {
        $this->modelo = $modelo;
    }
}
?>
