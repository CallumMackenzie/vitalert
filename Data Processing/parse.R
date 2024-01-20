library(readr)
library(dplyr)
library(RJSONIO)

rdi = read_tsv("./rdi.tsv")

rdi$PregnantWomen

json <- toJSON(rdi)

write.table(json, file = "rdi.json", row.names = F, quote=F, col.names = F)