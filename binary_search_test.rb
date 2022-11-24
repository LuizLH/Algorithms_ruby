#Testing binary search algorithm
require "./binary_search.rb"

#Teste Lista de inteiros 
lista_inteiros = [10, 20, 30, 50, 60, 80, 100, 110, 130, 170]

puts "Iterative binary search at position #{BinarySearch::iterative(lista_inteiros, 170)}"

puts "Recursive binary search at position #{BinarySearch::recursivo(lista_inteiros, 170, 0, lista_inteiros.length-1)}"
