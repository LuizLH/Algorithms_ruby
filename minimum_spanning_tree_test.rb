#Testing Kruskal’s Minimum Spanning Tree Algorithm

g = Graphbox.new(4)

# Edge 0-1
g.addEdge(0, 1, 10)

# Edge 0-2
g.addEdge(0, 2, 6)

# Edge 0-3
g.addEdge(0, 3, 5)

# Edge 1-3
g.addEdge(1, 3, 15)

# Edge 2-3
g.addEdge(2,3,4)

g.KruskalMST()

