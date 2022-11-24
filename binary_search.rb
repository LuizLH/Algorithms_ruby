#Implementing binary search algorithm
module BinarySearch

    #Iterative method
    def BinarySearch.iterative(list, element)
        low  = 0
        high = list.length-1
        mid  = 0

        until low == high
            mid = (low + high)/2
        
            if (element == list[mid])
                break
            elsif (element > list[mid]) # element is on the right side"
                mid = mid + 1
                low = mid
            else
                mid  = mid -1           # element is on the left side
                high = mid 
            end
        end
        if (element == list[mid])
            return mid
        else
            return -1
        end
    end

    #Recursive method
    def BinarySearch.recursivo(list, element, low, high)
        if low > high
            return -1 
        else
            mid = (low + high) / 2 
            if element == list[mid]
                return mid
            elsif element > list[mid]    # element is on the right side
                return recursivo(list, element, mid + 1, high)
            else                         # element is on the left side
                return recursivo(list, element, low, mid - 1)
            end
        end
    end

end