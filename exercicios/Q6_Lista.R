amostra1 <- c(2.87, 2.16, 3.14, 2.51, 1.80, 3.01, 2.16)
amostra2 <- c(3.23, 3.45, 2.78, 3.77, 2.97, 3.53, 3.01)
amostra3 <- c(2.25, 3.13, 2.44, 3.27, 2.81, 1.36)

dados <- c(amostra1, amostra2, amostra3)

grupo <- factor(rep(1:3, c(length(amostra1), length(amostra2), length(amostra3))))

dados_df <- data.frame(valor = dados, grupo = grupo)

shapiro.test(amostra1)
shapiro.test(amostra2)
shapiro.test(amostra3)

bartlett.test(valor~grupo, data = dados_df)


mod_anova <- aov(valor ~ grupo, data = dados_df)

summary(mod_anova)