require "./linear_search"

#Teste Lista de inteiros 
lista_inteiros = [10, 20, 80, 30, 60, 50,110, 100, 130, 170]

puts "At position #{search(lista_inteiros, 80)}"


#Teste Lista de Strings
lista_nomes = ["Luiz", "Mara", "Ester", "João", "Drake", "Xuxu", "Todynho", "Azul"]

puts "At position #{search(lista_nomes, "Drake")}"

#Teste Lista Inteiros e Strings
lista_mista = [10,20,"Luiz", "Mara"]

puts search(lista_mista, 20)

puts lista_mista[2]
if lista_mista[0] == 10
    puts "Verdadeiro"
else
    puts "Falso"
end