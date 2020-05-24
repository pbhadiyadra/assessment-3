# question one .
#download.file("https://raw.githubusercontent.com/markziemann/SLE712_files/master/bioinfo_asst3_part1_files/gene_expression.tsv",destfil="gene_expression.tsv")
library(readr)
library(dplyr)
library(tidyr)
#library(data.table)
#library(tidyverse)
library(tibble)

url <- "https://raw.githubusercontent.com/markziemann/SLE712_files/master/bioinfo_asst3_part1_files/gene_expression.tsv"
#will read the data is namede as gene
gene <- read_tsv(url)
#name of the columns
names(gene) <- c(" gene accession numbers", "SRR5150592", "SRR5150593")
# gene accession number as row name 
gene <-read.table("gene_expression.tsv" , header = TRUE , row.names =  1)
head(gene)
str(gene)
gene[1:6,1:3]


#question 2

#addition of col
gene$Mean<-rowMeans(gene,na.rm = TRUE)
# head of mean col
head(gene$Mean)
#head of whole gene data 
head(gene)


#question 3


#arranged in descending order
Arranging <- gene%>%arrange(desc(Mean))%>% head(10)
rownames(Arranging) <- rownames(gene) %>% head(10)
Arranging

#question 4

#mean less than 10
Mean[Mean < 10]
# number of gene with mean less than 10 .
Result <- Mean[Mean < 10]
NROW(Result)

#Question 5

#histogram
range(gene$Mean)
histogram <- hist (gene$Mean,main = "Histogram of Mean Values",xlab = "Mean", ylab = "GAN" ,breaks = 10)



