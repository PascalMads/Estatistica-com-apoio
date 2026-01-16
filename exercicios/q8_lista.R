
ruido = c(
  # Nacional - Rolado
  42.1, 42.0, 40.3, 38.2, 37.4, 37.0, 40.9, 40.7, 39.4,
  # Nacional - Cortado
  38.9, 38.9, 43.7, 42.3, 42.3, 42.1, 42.0, 41.4, 41.3,
  # Nacional - Importado
  41.0, 40.1, 40.3, 40.5, 41.3, 40.4, 40.6, 41.3, 41.6,
  # Importada - Rolado
  39.6, 40.2, 48.4, 41.3, 46.8, 40.3, 39.6, 36.9, 39.9,
  # Importada - Cortado
  40.9, 41.0, 41.0, 40.5, 39.9, 39.3, 38.1, 38.0, 36.2,
  # Importada - Importado
  39.9, 41.0, 42.7, 41.3, 40.1, 41.6, 36.7, 37.2, 36.7
)

caixa = factor(rep(c("Nacional", "Importada"), each = 27))
eixo = factor(rep(rep(c("Rolado", "Cortado", "Importado"), each = 9), 2))

dados = data.frame(ruido, caixa, eixo)

# 2. Ajustar modelo de ANOVA com interação
modelo = aov(ruido ~ caixa * eixo, data = dados)

# 3. Gerar os gráficos de diagnóstico da ANOVA
par(mfrow = c(2, 2))  # Layout 2x2 para os 4 gráficos
plot(modelo)
par(mfrow = c(1, 1))  # Reset layout
