
rend = c(12.8, 12.6, 12.9, 13.5, 11.6, 12.2,  # Combustível 1
         12.0, 12.2, 12.0, 11.5, 11.8, 12.3,  # Combustível 2
         13.1, 13.3, 13.0, 12.8, 12.6, 12.9)  # Combustível 3

# 2. Fator indicando o tipo de combustível
combustivel = factor(rep(c("C1", "C2", "C3"), each = 6))


dados = data.frame(rend, combustivel)


modelo = aov(rend ~ combustivel, data = dados)


summary(modelo)

# 6. Verificar pressupostos da ANOVA

#Normalidade dos resíduos
shapiro.test(resid(modelo))

#Homogeneidade das variâncias
bartlett.test(rend ~ combustivel, data = dados)

#Tukey
resultado_tukey = TukeyHSD(modelo)
print(resultado_tukey)

#Gerar gráfico do teste de Tukey
plot(resultado_tukey, las = 1)