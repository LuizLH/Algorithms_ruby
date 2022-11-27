#Testing the count sort algorithm
require "./count_sort.rb"

#Teste Lista de caracteres
lista = ['g', 'e', 'e', 'k', 's', 'f', 'o', 'r', 'g', 'e', 'e', 'k', 's']

puts "Antes -> #{lista}"

CountSort(lista)

puts "Depois -> #{lista}"
