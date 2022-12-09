#My personal implementing quick sort algorithm

class QuickSort

    def initialize(list)
        @list = list
    end

    def qsort(l, r)
        if r - l < 1 
            exit
        end

        i = l
        j = r
        puts "l = #{l} , r = #{r}"
        pivot = @list[(l + r) >> l]
        puts pivot
        until i > j
            while @list[i] < pivot 
                i += 1 
            end

            while @list[j] > pivot
                j -= 1
            end

            if i <= j 
                temp = @list[i]
                @list[i] = @list[j]
                @list[j] = temp
                i += 1 
                j -= 1
            end
        end
        qsort(l, j)
        qsort(i, r) 
    end

end