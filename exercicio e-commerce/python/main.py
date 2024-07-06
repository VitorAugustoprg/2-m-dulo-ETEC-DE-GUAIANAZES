from panela import Panela
from celular import Celular

poco = Celular('01', 'Novo', '01', '1.400,00', 'Xiaomi', 'Poco 5x', 'Azul', '264GB', 'Android')
poco.cadastrar()
poco.exibir()

panela = Panela('10', 'azul', 'frigideira', '400,00')
panela.cadastrar()
panela.exibir()
