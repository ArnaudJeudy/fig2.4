#################################################
#               Universite Quisqueya            #
#                                               #
# Nom & Prenom : Arnaud Jeudy                   #
# Code : JE174413                               #
# Devoir D'intra                                #
#################################################

#importing data 


#data import

library(readr)
fig3_1 <- read_csv("fig3.1.csv")

#intalling ggplot2

install.packages("ggplot2")
library(ggplot2)

# graph

ggplot(data = fig3_1, aes(x=fig3_1$annees, y=fig3_1$`pib(%)`))+ 
  geom_line(color = "dark green")+
  geom_vline(xintercept = 2007,linetype = "dotted", color = "red", size = 1)+
  geom_vline(xintercept = 2010,linetype = "dotted", color = "red", size = 1)+ 
  geom_vline(xintercept = 2016,linetype = "dotted", color = "red", size = 1)+ 
  geom_vline(xintercept = 2014,linetype = "dotted", color = "red", size = 1)+
  geom_vline(xintercept = 2020,linetype = "dotted", color = "red", size = 1)+
  geom_vline(xintercept = 2019,linetype = "dotted", color = "red", size = 1)+  
  labs( x = "Annees", y="%PIB") +
  