library(tidyverse)
library(ggvenn)
library(devtools)

#set working directory
setwd("Y:/Julia Crunden/Results/Proteomics/Analysis/GO analysis/GO term finder results")

#read in the file. Check.names=false allows a column name to start with a number. To name a df with a number, you need to use`` around it.
df <- read.csv("GO terms inc & dec.txt", sep="\t", check.names=FALSE)

#turn dataframe into lists
list <- list('Increased' = df$`Increase`,
              'Decreased' = df$`Decrease`)


#Venn diagram of lists. Set colour of circles, set group names to 12, inner text to 8
ggvenn(list, 
       fill_color = c("red", "dark blue"),
       set_name_size = 12,
       text_size = 10)


#Save
ggsave("GO_inc_v_dec.png", width = 12.5, height = 12.5, dpi = 600)
