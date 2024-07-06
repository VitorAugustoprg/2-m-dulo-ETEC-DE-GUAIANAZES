class Produto:
    def cadastrar(self):
        self.__cod = input('Digite o codigo do produto: ')
        self.__desc = input('Digite a descrição do produto: ')
        self.__qtde = input('Digite a quantidade: ')
        self.__valor = input('Digite o valor do produto: ')

    @property
    def cod(self):
        return self.__cod

    @cod.setter
    def cod(self, cod):
        self.__cod = cod

    @property
    def desc(self):
        return self.__desc

    @desc.setter
    def desc(self, desc):
        self.__desc = desc

    @property
    def qtde(self):
        return self.__qtde

    @qtde.setter
    def qtde(self, qtde):
        self.__qtde = qtde

    @property
    def valor(self):
        return self.__valor

    @valor.setter
    def valor(self, valor):
        self.__valor = valor
