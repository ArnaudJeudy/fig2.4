#devoir D'intra
#importing data 


#data import

library(readr)
fig2_4 <- read_csv("~/intra/fig2.4/fig2.4.csv")
#intalling ggplot2

install.packages("ggplot2")
library(ggplot2)

# graph

ggplot(data = fig2_4, aes(x=fig2_4$annees, y=fig2_4$`pib(%)`))+ 
  geom_line(color = "dark green")+
  geom_vline(xintercept = 2007,linetype = "dotted", color = "red", size = 1) +
  geom_vline(xintercept = 2010,linetype = "dotted", color = "red", size = 1) + 
  geom_vline(xintercept = 2016,linetype = "dotted", color = "red", size = 1) + 
  geom_vline(xintercept = 2014,linetype = "dotted", color = "red", size = 1)+
  geom_vline(xintercept = 2020,linetype = "dotted", color = "red", size = 1)+ 
  geom_smooth(se = FALSE, color = "red") + 
  labs( x = "Annees", y="%PIB") 

