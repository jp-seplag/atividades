## CORRELAÇÃO COM R ##
# PRIMEIRO, VAMOS CARREGAR OS PACOTES
pacman::p_load(corrplot)

# Vamos carregar o dataset com uma pequena série histórica de indicadores econômicos do Brasil
# (PIB,IBOV,CÂMBIO)
df <- readxl:: read_excel("bases_originais/BRASIL.xlsx")
str(df)

# TABELA DE CORRELAÇÃO COM TODAS AS VARIÁVEIS #
cor(df[,-1])

# GRÁFICOS DE DISPERSÃO PAREADOS DAS VARIÁVEIS #
pairs(df[,-1])

# CORRPLOT DAS VARIÁVEIS #
dfCor <- cor(df[,-1])
corrplot(dfCor, method = "number", order = 'alphabet')
corrplot(dfCor, order = 'alphabet') 
