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

    def partition(p, rr)
        x = R[p]
        i = p - 1
        j = rr + 1
        while i < j 
            until R[j]<=x
                j:=j-1
            end
            
            until R[i]>=x
                i:=i+1
            end

            if i < j
                t    = R[i] 
                R[i] = R[j] 
                R[j] = t

                z    = B[i] 
                B[i] = B[j] 
                B[j] = z
                
                z    = E[i]
                E[i] = E[j]
                E[j] = z
            end
        end
      Partition = j
    end

    def QuicksortR(p, rr)
        if p < rr
            q = Partition(p,rr)
            QuicksortR(p,q)
            QuicksortR(q+1,rr)
        end
    end
    
    def KruskalMST()

        QuicksortR(1,n);
        #MinTree;

    end


 end