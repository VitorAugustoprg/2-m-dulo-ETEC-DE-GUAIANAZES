from produto import Produto

class Panela(Produto):
    def __init__(self, cod, cor, modelo, valor):
        super().__init__()
        self.__cod = cod
        self.__cor = cor
        self.__modelo = modelo
        self.__valor = valor

    def cadastrar(self):
        super().cadastrar()
        self.__cor = input('Digite a cor da panela: ')
        self.__modelo = input('Digite o modelo da panela: ')

    def exibir(self):
        print(self.__cod, self.__cor, self.__modelo, self.__valor)

    @property
    def cor(self):
        return self.__cor

    @cor.setter
    def cor(self, cor):
        self.__cor = cor

    @property
    def modelo(self):
        return self.__modelo

    @modelo.setter
    def modelo(self, modelo):
        self.__modelo = modelo
