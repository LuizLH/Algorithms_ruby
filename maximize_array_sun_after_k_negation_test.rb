#Testing Maximize Array Sun After k Negation
require "./maximize_array_sun_after_k_negation.rb"

maxMin = MaximumSum.new

lista1 = [-2, 0, 5, -1, 2]

puts "Result -> #{maxMin.maximumSum(lista1, lista1.length, 4)}"

lista2 = [-2, 0, 5, -1, 2 ]
    
puts "Result2 -> #{maxMin.maximizeSum(lista2, lista2.length, 4)}"