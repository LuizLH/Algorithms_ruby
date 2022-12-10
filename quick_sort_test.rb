#Testing binary search algorithm
require "./quick_sort.rb"
require "benchmark" 

#result = Benchmark.measure do
    #lista = [5, 1, 4, 2, 8]
    lista = [-34, -20, 30, 13, 36, -10, 5, -25, 9, 19, 35, -50, 29, 11]

    qsort = QuickSort.new(lista)

    puts lista

    qsort.qsort(0, lista.length-1)

    puts lista
#end
#puts result

=begin
result = Benchmark.measure do
    # Create an array of unsorted numbers
    numbers = [4, 7, 2, 1, 3, 8, 5, 9, 6]
    
    # Sort the array using the quicksort method
    sorted_numbers = qsort.quicksort(numbers)

    puts "Output: #{sorted_numbers}"
end

puts result
=end