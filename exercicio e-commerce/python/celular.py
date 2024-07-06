from produto import Produto

class Celular(Produto):
    def __init__(self, cod, desc, qtde, valor, modelo, nome, cor, armazenamento, software):
        super().__init__()
        self.__cod = cod
        self.__desc = desc
        self.__qtde = qtde
        self.__valor = valor
        self.__modelo = modelo
        self.__nome = nome
        self.__cor = cor
        self.__armazenamento = armazenamento
        self.__software = software

    def cadastrar(self):
        super().cadastrar()
        self.__modelo = input('Digite o modelo do produto: ')
        self.__nome = input('Digite o nome do produto: ')
        self.__cor = input('Digite a cor do produto: ')
        self.__armazenamento = input('Digite a quantidade de armazenamento do produto: ')
        self.__software = input('Digite o software do produto: ')

    def exibir(self):
        print(self.__cod, self.__desc, self.__qtde, self.__valor, self.__modelo, self.__nome, self.__cor, self.__armazenamento, self.__software)

    @property
    def modelo(self):
        return self.__modelo

    @modelo.setter
    def modelo(self, modelo):
        self.__modelo = modelo

    @property
    def nome(self):
        return self.__nome

    @nome.setter
    def nome(self, nome):
        self.__nome = nome

    @property
    def cor(self):
        return self.__cor

    @cor.setter
    def cor(self, cor):
        self.__cor = cor

    @property
    def armazenamento(self):
        return self.__armazenamento

    @armazenamento.setter
    def armazenamento(self, armazenamento):
        self.__armazenamento = armazenamento

    @property
    def software(self):
        return self.__software

    @software.setter
    def software(self, software):
        self.__software = software
