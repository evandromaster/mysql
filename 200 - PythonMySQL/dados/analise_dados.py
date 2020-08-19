import matplotlib.pyplot as plt
y = [1,3,5,7,9,12, 14]
x = ["Seg","Ter","Qua","Qui","Sex","Sáb", "Dom"]
titulo = "scaterplot: grafico de dispersão"
eixoy = "Quantidade  de crimes"
eixox = "Dia da Semana"

plt.title(titulo)
plt.xlabel(eixox)
plt.ylabel(eixoy)
plt.plot(x, y, color = "#000000", linestyle = "-.")
plt.scatter(x, y, label = "meus pontos", color = "g", marker = "h", s = 200)


# plt.legend()

plt. show()