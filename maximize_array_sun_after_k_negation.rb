#Implementing Maximize Array Sun After k Negation

class MaximumSum

    def maximumSum(list, n, k)
        # Modify array K number of times
        for i in (1..k)
            min = 2147483647;
            index = -1;

            # Find minimum element in array for
            # current operation and modify it
            # i.e; arr[j] --> -arr[j]
            for j in (0..n-1)
                if list[j] < min
                    min = list[j]
                    index = j
                end
            end

            # this the condition if we find
            # 0 as minimum element, so it
            # will useless to replace 0 by -(0)
            # for remaining operations
            if (min == 0)
                break

                # Modify element of array
                list[index] = -list[index];
            end
        end

        # Calculate sum of array
        sum = 0
        for i in (0..n-1)
            sum += list[i]
        end

        return sum
    end

    def sumArray(list)
        sum = 0
    
        # Iterate from 0 to n - 1
        for i in (0..list.length-1)
            sum += list[i]
        end
        return sum
    end 

    def maximizeSum(list, n, k)
        arr = list.sort
        
        # Iterate from 0 to n - 1
        for i in (0..n-1) 
            if (k != 0 and arr[i] < 0)
                arr[i] *= -1
                k -= 1
                next
            end
            break
        end

        if (i == n)
            i -= 1
        end
      
        if (k == 0 or k % 2 == 0)
            return sumArray(arr);
        end
      
        if (i != 0 and (arr[i].abs >= arr[i - 1].abs))
            i -= 1
        end
      
        arr[i] *= -1
        return sumArray(arr)
    end

end