#Testing binary search algorithm
require "./quick_sort.rb"

lista = [5, 1, 4, 2, 8]

qsort = QuickSort.new(lista)

p lista

qsort.qsort(0, lista.length-1)

p lista