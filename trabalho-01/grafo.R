library(igraph)

network <- graph.empty (10, directed = FALSE)

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
4/10 <- get.adjacency(network)
sum(matrixA)

#grau medio
mean(degree(network))

#grau
grau <- degree(network)

#densidade
graph.density(network)

#Distribuição de grau e o respectivo gráfico
network.dd <- degree_distribution(network)
plot(network.dd, xlab="Grau",ylab="Frequência relativa",
     type="p",col="blue",ylim=c(0,0.4))
