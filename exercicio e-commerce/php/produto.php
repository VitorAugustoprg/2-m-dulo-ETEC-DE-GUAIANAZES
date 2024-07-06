<?php
class Produto {
    private $cod;
    private $desc;
    private $qtde;
    private $valor;

    public function cadastrar() {
        $this->cod = readline('Digite o codigo do produto: ');
        $this->desc = readline('Digite a descrição do produto: ');
        $this->qtde = readline('Digite a quantidade: ');
        $this->valor = readline('Digite o valor do produto: ');
    }

    public function getCod() {
        return $this->cod;
    }

    public function setCod($cod) {
        $this->cod = $cod;
    }

    public function getDesc() {
        return $this->desc;
    }

    public function setDesc($desc) {
        $this->desc = $desc;
    }

    public function getQtde() {
        return $this->qtde;
    }

    public function setQtde($qtde) {
        $this->qtde = $qtde;
    }

    public function getValor() {
        return $this->valor;
    }

    public function setValor($valor) {
        $this->valor = $valor;
    }
}
?>
