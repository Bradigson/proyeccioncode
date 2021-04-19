library(readxl)
library(tidyverse)
library(dplyr)
file.choose()
Acidentes <- "C:\\Users\\Music\\Documents\\itla\\itla 2020\\C1 2021\\Inteligencia Artificial\\Proyecto Final\\proyecion\\Acidentes.xlsx"
Acidentes_transito <- read_excel(Acidentes)
head(Acidentes_transito)

cantidad <- select(Acidentes_transito,CANTIDAD )
año <- select(Acidentes_transito, AñO)
aci_datos <- cbind(cantidad,año)




Acidentes_transito %>%
  
  ggplot(aes(x = AñO,
             y = CANTIDAD)) +
  geom_point() +
  geom_abline(intercept = 37.41,
              slope = 0,
              col ='blue') +
  geom_vline(xintercept = 2021.015,
             col = 'red')


lm(CANTIDAD ~ AñO, data = Acidentes_transito)


year <- 2021.015
medida <- 2021 * year + 37.41
print(medida)




