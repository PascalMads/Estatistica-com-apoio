alturaX <- c(764, 625, 520, 510, 492, 484, 450, 430, 410)
andaresY <- c(55, 47, 51, 28, 39, 34, 33, 31, 40)

dados_miami <- data.frame(alturaX, andaresY)

plot(alturaX, andaresY,
     
     main = "Altura x Andares",
     xlab = "Altura (pés)", ylab = "N° de Andares",
     pch = 16, col = "blue")

modelo = lm(andaresY ~ alturaX, data = dados_miami)
summary(modelo)

novos_x = data.frame(alturaX = c(500, 650, 310, 725))

predict(modelo, newdata = novos_x)

abline(modelo, col = "red", lwd = 2)

