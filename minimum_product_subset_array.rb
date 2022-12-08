#Minimum Product Subset Array

def minProductSubset(list)

    if list.length == 1
        return list[0]
    end

    list.sort!

    prod = 1

    #list.each { |a| prod *= a }
    list.each do |a|
        #puts a
        if a != 0
            prod *= a 
        end
    end

    prod
end

lista = [-1, -1, -2, 4, 3]

puts minProductSubset(lista)

lista = [-1, 0]

puts minProductSubset(lista)