
# question one .
#download.file("https://raw.githubusercontent.com/markziemann/SLE712_files/master/bioinfo_asst3_part1_files/gene_expression.tsv",destfil="gene_expression.tsv")
library(readr)
library(dplyr)
library(tidyr)
library(tibble)

url <- "https://raw.githubusercontent.com/markziemann/SLE712_files/master/bioinfo_asst3_part1_files/gene_expression.tsv"
#will read the data is named as gene
gene <- read_tsv(url)
str(gene)
#name of the columns
names(gene) <- c(" gene accession numbers", "SRR5150592", "SRR5150593")
# gene accession number as row name
gene <-read.table("gene_expression.tsv" , header = TRUE , row.names =  1)
tabular_format <- head(gene)

#question 2


#addition of col
gene$Mean<-rowMeans(gene,na.rm = TRUE)
# head of mean col
head(gene$Mean)
#head of whole gene data
HEAD <-head(gene)

#question 3


#arranged in descending order
Arranging <- gene%>%arrange(desc(Mean))%>% head(10)


#question 4

#mean less than 10
gene$Mean[gene$Mean < 10]
# number of gene with mean less than 10 .
Result <- gene$Mean[gene$Mean < 10]
NROW(Result)

#Question 5

#histogram
range(gene$Mean)
histogram <- hist (gene$Mean,main = "Histogram of Mean Values",xlab = "Mean", ylab = "GAN" ,breaks = 10)
