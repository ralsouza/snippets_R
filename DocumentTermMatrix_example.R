# From http://est.ufmg.br/~marcosop/est171-ML/R/textMining.R

library(tm)

textos=c("Poderoso Estimulante Natural - Esquente sua noite na cama.",
         "OlÃ¡ professor, sou aluna de MineraÃ§Ã£o de Dados.",
         "Boa tarde professor Rafael, segue contato como pedido.",
         "Aumente sua performance na cama a noite usando esse estimulante. Esquente seu relacionamento!")
corp = VCorpus(VectorSource(textos), readerControl = list(language = "portuguese"))

?DocumentTermMatrix
dtm = DocumentTermMatrix(corp,control=list(tolower=TRUE,removeNumbers=TRUE, removePunctuation=TRUE))
mydtm = as.matrix(dtm)
mydtm
colnames(mydtm)
as.matrix(dist(mydtm))


dtm = DocumentTermMatrix(corp,control=list(tolower=TRUE,weighting=weightTfIdf,removeNumbers=TRUE, removePunctuation=TRUE,lang="pt"))
mydtm = as.matrix(dtm)
mydtm
colnames(mydtm)
as.matrix(dist(mydtm))


mydtm = as.matrix(dtm)
mydtm
