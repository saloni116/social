
install.packages("igraph")
library(igraph)

edges <- data.frame(
  from = c("A", "A", "B", "B", "C", "D", "D", "E", "F", "G"),
  to = c("B", "C", "C", "D", "D", "E", "F", "F", "G", "H")
)

g <- graph_from_data_frame(edges, directed = FALSE)

plot(g)

communities <- cluster_edge_betweenness(g)

print(communities)

#install.packages("igraph"), ctrlA,ctrlENTER
