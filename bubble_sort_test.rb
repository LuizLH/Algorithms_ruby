#Testing bubble sort algorithm
require "./bubble_sort.rb"

#Teste Lista de inteiros 
lista = [5, 1, 4, 2, 8]

puts "Antes -> #{lista}"

BubbleSort::sort(lista)

puts "Depois -> #{lista}"