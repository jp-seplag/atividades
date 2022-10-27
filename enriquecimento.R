library(tidyverse)

# Carregando as bases

# Base com o index
index <- read_csv("bases_originais/fome/global-hunger-index.csv")
# Vamos retirar a última coluna pois não será utilizada
index <- index[,-5]
# base com o percentual de peso abaixo do normal
underweight <- read_csv("bases_originais/fome/share-of-children-underweight.csv")
# base com relação altura/cintura
height_wasting <- read_csv("bases_originais/fome/share-of-children-with-a-weight-too-low-for-their-height-wasting.csv")
# base com percentual de crianças com deficiencia no crescimento
stunting <- read_csv("bases_originais/fome/share-of-children-younger-than-5-who-suffer-from-stunting.csv")

# Agrupando as variáveis realizando "junção à esquerda"
fome <- left_join(index, underweight)
fome <- left_join(fome, height_wasting)
fome <- left_join(fome, stunting)

# Vamos ver como ficou nossa base
head(fome)
str(fome)
glimpse(fome)
# Temos muitos valores missing, vamos dar uma "olhada" retirando esses registros
glimpse(na.omit(fome))

