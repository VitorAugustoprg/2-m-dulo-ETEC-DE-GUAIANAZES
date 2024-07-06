<?php
require_once 'Produto.php';

class Celular extends Produto {
    private $modelo;
    private $nome;
    private $cor;
    private $armazenamento;
    private $software;

    public function __construct($cod, $desc, $qtde, $valor, $modelo, $nome, $cor, $armazenamento, $software) {
        $this->setCod($cod);
        $this->setDesc($desc);
        $this->setQtde($qtde);
        $this->setValor($valor);
        $this->modelo = $modelo;
        $this->nome = $nome;
        $this->cor = $cor;
        $this->armazenamento = $armazenamento;
        $this->software = $software;
    }

    public function cadastrar() {
        parent::cadastrar();
        $this->modelo = readline('Digite o modelo do produto: ');
        $this->nome = readline('Digite o nome do produto: ');
        $this->cor = readline('Digite a cor do produto: ');
        $this->armazenamento = readline('Digite a quantidade de armazenamento do produto: ');
        $this->software = readline('Digite o software do produto: ');
    }

    public function exibir() {
        echo $this->getCod() . " " . $this->getDesc() . " " . $this->getQtde() . " " . $this->getValor() . " " . $this->modelo . " " . $this->nome . " " . $this->cor . " " . $this->armazenamento . " " . $this->software . "\n";
    }

    public function getModelo() {
        return $this->modelo;
    }

    public function setModelo($modelo) {
        $this->modelo = $modelo;
    }

    public function getNome() {
        return $this->nome;
    }

    public function setNome($nome) {
        $this->nome = $nome;
    }

    public function getCor() {
        return $this->cor;
    }

    public function setCor($cor) {
        $this->cor = $cor;
    }

    public function getArmazenamento() {
        return $this->armazenamento;
    }

    public function setArmazenamento($armazenamento) {
        $this->armazenamento = $armazenamento;
    }

    public function getSoftware() {
        return $this->software;
    }

    public function setSoftware($software) {
        $this->software = $software;
    }
}
?>
