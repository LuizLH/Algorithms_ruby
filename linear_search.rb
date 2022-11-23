#Implementing linear search algorithm

def search(list, element)
    for index in (0...list.length)
        if list[index] == element
            return index
        end
    end
    return -1
end

