class Retangulo:
    def __init__(self):
        self.a = 0
        self.l = 0

    def area(self):
        return self.a * self.l

r1 = Retangulo()

r1.a = int(input('Insira o valor para áltura: '))

r1.l = int(input('Insira o valor para largura: '))

print("O valor  da área é:", r1.area())



