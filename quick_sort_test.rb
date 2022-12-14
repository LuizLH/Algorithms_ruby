# Testing binary search algorithm
require './quick_sort'
require 'benchmark'
require 'narray'

# result = Benchmark.measure do
# lista = [5, 1, 4, 2, 8]
lista = [-34, -20, 30, 13, 36, -10, 5, -25, 9, 19, 35, -50, 29, 11]

qsort = QuickSort.new(lista)

# puts lista

# qsort.qsort(0, lista.length-1)

# puts lista
# end
# puts result

b = NArray[[1, 2, 3], [4, 5, 6], [7, 8, 9]]

# Create an array of unsorted numbers
numbers = Array.new()
(0..1000).each do
  numbers << rand(0...10)
end

puts "Input: #{numbers}"
puts '*********Terminou gerando*********'
result = Benchmark.measure do
  # Sort the array using the quicksort method
  sorted_numbers = qsort.quicksort(numbers)

  puts "Output: #{sorted_numbers}"
end

puts result
