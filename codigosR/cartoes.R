#2 - a)
cartoes <- read.csv2("~/arquivosR/campeonato-brasileiro-cartoes.csv", sep = ",", header = TRUE)

table(cartoes$cartao)

#2 - b)

barplot(table(cartoes$cartao), col = c("yellow", "red"), main = "Quantidades de Cartões por Cor")

#3 - a)

vermelhos <- subset(cartoes, cartao == "Vermelho")

frequencia <- table(vermelhos$clube)

names(which.min(frequencia))
names(which.max(frequencia))

