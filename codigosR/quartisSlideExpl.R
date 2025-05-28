# Valores da amostra
valores <- c(96, 96, 102, 102, 102, 104, 104, 108, 126, 126, 
             128, 128, 140, 156, 160, 160, 164, 170)

# a) Média
media <- mean(valores)

# b) Mediana e quartis
mediana <- median(valores)
q1 <- quantile(valores, 0.25)
q3 <- quantile(valores, 0.75)

# c) Variância e desvio padrão
variancia <- var(valores)
desvio_padrao <- sd(valores)

# Exibir resultados
media
mediana
q1
q3
variancia
desvio_padrao
