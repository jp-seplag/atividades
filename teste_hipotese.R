pacman::p_load(tidyverse)


# Vamos carregar os dados de hipertensão e diabetes no ano de 2012
hiperdia <- read.csv2("bases_originais/hiperdia.csv", skip = 3)
str(hiperdia)
hiperdia$Hiper_c._Diabete <- as.integer(hiperdia$Hiper_c._Diabete)
# Agora vamos carregar a informação de população
pop <- read.csv2("bases_originais/pop12.csv",skip = 3)
str(pop)

hiperdia <- left_join(hiperdia,pop)
head(hiperdia)
str(hiperdia)


teste_cor <- cor.test(hiperdia$Hiper_c._Diabete,hiperdia$População_residente)
summary(teste_cor)
print( str_c( "O p-value do teste de correlação foi igual a ", 
              round(teste_cor$p.value,2)
            )
      )
# H0: variáveis são independentes / não têm associação. p-valor (p-value) > 0.05
# H1: variáveis são dependentes / há associação. p-valor (p-value) <= 0.05
 