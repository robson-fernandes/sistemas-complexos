library(igraph)

#
# Limpa workspace e variáveis
#
ls()
rm(list=ls())
graphics.off()

network <- graph.empty (10, directed = FALSE)
ecount(network)

colection.edges <- c(1,2, 
               2,3, 
               2,4, 
               4,3, 
               3,5,
               5,6,
               5,7,
               6,7,
               7,8,
               7,9,
               7,10)

network <- add.edges(network, colection.edges)

plot(network)

#matriz de adjacências
matrixA <- get.adjacency(network)
sum(matrixA)

#<k> 
#grau medio
kMedio <- mean(degree(network))

#grau
grau <- degree(network, mode = "all")

plot(network, vertex.size=grau*5)

#histograma
h <- hist(grau, breaks = 1:vcount(network) - 1, main = "Histograma dos Graus")


#densidade
graph.density(network)
edge_density(network, loops = FALSE)

#Distribuição do Grau Médio - P(k)
deg.dist <- degree_distribution(network,mode="all",
                                cumulative=FALSE)

plot(x=0:5,y=deg.dist, pch=19, cex=1.2,
     xlab="Grau",
     ylab="Frequencia",
     type="p",
     col="blue",
     main = "Distribuição do Grau Médio")


#Segundo Momento do Grau - <K>2
grau <- grau^2
sum.grau.square = sum(grau)
total.grau <- length(grau)

kQuadrado <- sum.grau.square / total.grau
kQuadrado

#Calcula da Variancia
variancia <- kQuadrado - kMedio^2
variancia