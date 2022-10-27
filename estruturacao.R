library(dplyr)
library(tidyr)

# Vamos carregar o dataset underweight com dados sobre o percentual de crianças
# com menos de 5 anos com peso abaixo do normal.
df <- read_csv("bases_originais/underweight.csv")


# Vamos dar uma olhada na estrutura e nas primeiras linhas
str(df)
head(df)
# Vamos renomear a coluna com nome mais simoles para facilitar nosso trabalho
colnames(df)[4] = "Perc.Underweigth"
str(df)

# Vamos distribuir a série histórica anual em colunas, desta forma a informação 
# do percentual de cada ano ficará em uma coluna única. Estamos "pivotando" nossa
# base que está no formato "longo" para "largo". Vamos usar a função "pivot_wider".

df_wider <- pivot_wider(df,names_from = Year, values_from = Perc.Underweigth)

# Vamos dar uma olhada no dataset transformado
head(df_wider)
