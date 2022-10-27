pacman::p_load(data.table, dplyr, tidyverse, validate)


# Vamos utilizar o dataset com informações sobre os personagens de starwars
df <- starwars[1:10]
head(df)
# Vamos criar nossa regra de validação:
regras <- validator(height >= 100, mass >= 50)
# Vamos "confrontar" nossa base com as regras definidas
validacao <- confront(df, regras)
# Verificando a validação dos dados:
summary(validacao)
plot(validacao)
