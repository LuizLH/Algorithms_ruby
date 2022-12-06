#Find maximum sum possible equal sum three stack

def maxSum(stack1, stack2, stack3)

    sum1 = 0
    sum2 = 0
    sum3 = 0

    stack1.each { |a| sum1 += a }
    stack2.each { |a| sum2 += a }
    stack3.each { |a| sum3 += a }

    top1 = 0
    top2 = 0
    top3 = 0

    while true
        if (stack1.length==top1) or (stack2.length==top2) or (stack3.length==top3)
            return 0
        end
            
        if (sum1==sum2) and (sum2==sum3)
            return sum1
        end

        if (sum1 >= sum2 and sum1 >= sum3)
                sum1 -= stack1[top1]
        elsif (sum2 >= sum1 and sum2 >= sum3)
                sum2 -= stack2[top2]
        elsif (sum3 >= sum2 and sum3 >= sum1)
                sum3 -= stack3[top3]
        end
        top1 += 1
        top2 += 1
        top3 += 1
    end

end

stack1 = [3, 2, 1, 1, 1]
stack2 = [4, 3, 2]
stack3 = [2, 5, 4, 1]

puts maxSum(stack1, stack2, stack3)