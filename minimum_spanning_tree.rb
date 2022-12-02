#Implementing Kruskal’s Minimum Spanning Tree Algorithm
 
#My personal implementation MST
class Graph
    
    def initialize(vertices)
       @n = vertices # Number of Vertices
       @m = -1
       @b = Array.new(256, 0)
       @e = Array.new(256, 0)
       @r = Array.new(256, 0)
       @rank = Array.new(256, 0)      
       @pred = Array.new(256, 0)
    end

    # function to add an edge to graph
    def addEdge(src, dest, weight) 
        @m = @m + 1
        @b[@m] = src
        @e[@m] = dest
        @r[@m] = weight
    end

    def partition(p, rr)
        x = @r[p]
        i = p - 1
        j = rr + 1
        while i < j 
            until @r[j]<=x
                j = j - 1
            end
            
            until @r[i]>=x
                i = i + 1
            end

            if i < j
                t     = @r[i] 
                @r[i] = @r[j] 
                @r[j] = t

                z     = @b[i] 
                @b[i] = @b[j] 
                @b[j] = z
                
                z     = @e[i]
                @e[i] = @e[j]
                @e[j] = z
            end
        end
      return j
    end

    def quicksortR(p, rr)
        if p < rr
            q = partition(p,rr)
            quicksortR(p,q)
            quicksortR(q+1,rr)
        end
    end

    def makeSet(x)
        @rank[x] = 0      
        @pred[x] = x
    end
  
    def findSet(x)
        if x != @pred[x] 
            @pred[x] = findSet(@pred[x])
        end
        return @pred[x]
    end
  
    def link(x,y)
        if @rank[x] > @rank[y]
            @pred[y] = x
        else
            @pred[x] = y
            if @rank[x]=@rank[y]
                @rank[y] = @rank[y] + 1
            end
        end
    end
  
    def union(x,y)
      link(findSet(x), findSet(y))
    end
  
    def minTree
        for i in (1..@n)
            makeSet(i)
        end
        @answer=0
        for i in (1..@m)
            if findSet(@b[i]) != findSet(@e[i])
                @answer = @answer + @r[i]
                union(@b[i], @e[i])
            end
        end
    end
    
    def KruskalMST()

        quicksortR(1,@n)
        minTree
        puts "Resultado -> #{@answer}"

    end


 end