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




