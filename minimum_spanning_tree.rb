#Implementing Kruskal’s Minimum Spanning Tree Algorithm

class Graph
    
    def initialize(vertices)
       @vertices = vertices # Number of Vertices
       @graph = Array.new
    end

    # function to add an edge to graph
    def addEdge(src, dest, weight) 
        @graph.append([src, dest, weight])
    end


    
    def KruskalMST()

        # This will store the resultant MST
        result = Array.new

        # An index variable, used for sorted edges
        i = 0 
 
        # An index variable, used for result[]
        e = 0
        
    end


 end