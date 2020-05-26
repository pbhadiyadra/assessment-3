#question1

#E.COLI GENE SEQUENCE

download.file("ftp://ftp.ensemblgenomes.org/pub/bacteria/release-42/fasta/bacteria_0_collection/escherichia_coli_str_k_12_substr_mg1655/cds/Escherichia_coli_str_k_12_substr_mg1655.ASM584v2.cds.all.fa.gz",destfile = "Escherichia_coli_str_k_12_substr_mg1655.ASM584v2.cds.all.fa.gz")

#DECOMPRESS
R.utils::gunzip("Escherichia_coli_str_k_12_substr_mg1655.ASM584v2.cds.all.fa.gz",overwrite=TRUE)

#Blast database
makeblastdb("Escherichia_coli_str_k_12_substr_mg1655.ASM584v2.cds.all.fa",dbtype = "nucl","-parse_seqids")

#Sequences present
str("Escherichia_coli_str_k_12_substr_mg1655.ASM584v2.cds.all.fa.gz")
seqinr::getLength("Escherichia_coli_str_k_12_substr_mg1655.ASM584v2.cds.all.fa.gz")

#question2

#download and reading sequence length festa file
E.COLI <-fasta.seqlengths("https://raw.githubusercontent.com/markziemann/SLE712_files/master/bioinfo_asst3_part2_files/sample.fa")
str(E.COLI)

#read the festa file

E.COLI <- readDNAStringSet("Escherichia_coli_str_k_12_substr_mg1655.ASM584v2.cds.all.fa")

#selecting gene of interest.
geneofinterest <-extractROWS(E.COLI,10)
str(geneofinterest)

#for conformation
as.list(geneofinterest)
