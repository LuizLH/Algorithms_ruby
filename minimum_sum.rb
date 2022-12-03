#Implementing Minimum sum

def mimSum(list)
    n = list.length
    min_val = list.min
    return (min_val * (n - 1))
end