# Implementing binary search algorithm
module BinarySearch
  # Iterative method
  def self.iterative(list, element)
    low = mid = 0
    high = list.length - 1
    until low == high
      mid = (low + high) / 2
      if element == list[mid]
        break
      elsif element > list[mid] # element is on the right side
        mid += 1
        low = mid
      else
        mid -= 1 # element is on the left side
        high = mid
      end
    end
    if element == list[mid]
      mid
    else
      -1
    end
  end

  # Recursive method
  def self.recursivo(list, element, low, high)
    return -1 if low > high

    mid = (low + high) / 2 
    if element == list[mid]
      mid
    elsif element > list[mid]    # element is on the right side
      recursivo(list, element, mid + 1, high)
    else                         # element is on the left side
      recursivo(list, element, low, mid - 1)
    end
  end
end
