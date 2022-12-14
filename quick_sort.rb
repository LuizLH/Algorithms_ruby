# My personal implementing quick sort algorithm
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

    pivot = @list[(l + r) / 2]
    puts "Pivot = #{pivot}"
    begin
      puts "i = #{i} , j = #{j}"
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
      puts "i = #{i} , j = #{j}"
    end until !(i > j)
    qsort(l, j)
    qsort(i, r)
  end

  # The quicksort method takes an array of elements and returns a sorted array
  def quicksort(elements)
    # If the length of the array is 0 or 1, the array is already sorted
    return elements if elements.length <= 1

    # Select the first element of the array as the pivot
    pivot = elements.first

    # Create two arrays to hold the elements that are less than and greater than the pivot
    less_than_pivot = []
    greater_than_pivot = []

    # Loop through the rest of the elements in the array
    elements[1..].each do |element|
      # If the element is less than the pivot, add it to the less_than_pivot array
      # Otherwise, add it to the greater_than_pivot array
      if element <= pivot
        less_than_pivot << element
      else
        greater_than_pivot << element
      end
    end

    # Recursively sort the less_than_pivot and greater_than_pivot arrays
    # and concatenate the result with the pivot in the middle
    quicksort(less_than_pivot) + [pivot] + quicksort(greater_than_pivot)
  end

end
