# Testing bubble sort algorithm
require './bubble_sort'

# Teste Lista de inteiros
lista = [5, 1, 4, 2, 8]

puts "Antes -> #{lista}"

BubbleSort.recursive(lista, lista.length)

puts "Depois -> #{lista}"
