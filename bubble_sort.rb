#Implementing bubble sort algorithm

module BubbleSort

    #My personal implementation follow the below steps to solve the problem:
    #1-Run a nested for loop to traverse the input array using two variables i and j, such that 0 ≤ i < n-1 and 0 ≤ j < n-i-1
    #2-If arr[j] is greater than arr[j+1] then swap these adjacent elements, else move on
    def BubbleSort.mySort(list)
        swap = 1
        until swap == 0
            swap = 0
            puts "swap = #{swap}"
            j = 0
            while (j < list.length-1)
                if (list[j] > list[j+1])
                    puts "J = #{list[j]} <-> J+1 = #{list[j+1]}"
                    swap = swap + 1
                    el = list[j+1]
                    list[j+1] = list[j]
                    list[j] = el
                end
                j = j + 1
            end
        end
        puts "Fim"
    end

    #Classical implementation
    def BubbleSort.sort(list)
        n = list.length-1
        for i in (0..n)
            puts "i = #{n-i-1}"
            for j in (0..n-i-1)
                puts "j = #{j}"
                if (list[j] > list[j+1])
                    puts "J = #{list[j]} <-> J+1 = #{list[j+1]}"
                    swap = list[j];
                    list[j] = list[j+1]
                    list[j+1] = swap;
                end
            end
        end
    end

    #Recursive implementation
    def BubbleSort.recur(list)
        n = list.length
        if (n == 1)
            return
        end

        count = 0
        
        # One pass of bubble
        # sort. After this pass,
        # the largest element
        # is moved (or bubbled)
        # to end.
        for i in  (0..n - 2)
            if (list[i] > list[i + 1])
                # swap list[i], list[i+1]
                temp        = list[i]
                list[i]     = list[i + 1]
                list[i + 1] = temp
                count += 1
            end
        end

        # Check if any recursion happens or not
        # If any recursion is not happen then return
        if (count==0)
            return
        end

        # Largest element is fixed,
        # recur for remaining array
        bubbleSort(list, n-1)
    end

end