#4 - a) 
dados <- read.csv("~/arquivosR/campeonato-brasileiro-full.csv", sep = ",", header = TRUE)

jogos_criciuma <- subset(dados, mandante == "Criciuma")

#4 - b)
mean(jogos_criciuma$mandante_placar)
sd(jogos_criciuma$mandante_placar)

mean(jogos_criciuma$visitante_placar)
sd(jogos_criciuma$visitante_placar)

#5 - a)

flamengo_vencedor <- subset(dados, vencedor == "Flamengo")
flamengo_casa <- subset(flamengo_vencedor, mandante == "Flamengo")

#5 - b)
hist(flamengo_casa$mandante_placar, col = "green", 
     main = "Gols do Varmengo em casa", 
     xlab = "Gols",
     ylab = "Frequência",
     breaks = seq(1, max(flamengo_casa$mandante_placar)+1, 1),
     ylim = c(1, 120),
     xlim = c(1, 6),
     )

