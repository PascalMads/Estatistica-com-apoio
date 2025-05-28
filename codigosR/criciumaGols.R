#4 - a) 
dados <- read.csv("~/arquivosR/campeonato-brasileiro-full.csv", sep = ",", header = TRUE)

jogos_criciuma <- subset(dados, mandante == "Criciuma")

#4 - b)
mean(jogos_criciuma$mandante_placar)
sd(jogos_criciuma$mandante_placar)

mean(jogos_criciuma$visitante_placar)
sd(jogos_criciuma$visitante_placar)
