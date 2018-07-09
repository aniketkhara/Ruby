array_1 = [2, 4, 6, 8, 10]
array_2 = [1, 5, 6, 8, 11, 12]

hash_1 = {a: 'a', b: 'b', c: 'c', d: 'd', e: 'e'}
hash_2 = {x: '10', y: '20', z: '30'}

puts "1. Print 'Hello World' 10 times"
string="Hello World"
10.times{
  puts string
}

puts "2. Print number from 30 to 40"
(30..40).each { |n| puts n }

puts "3. Combine array_1 & array_2 and make elements it uniq"
array_3=array_1+array_2
array_4=array_3.uniq
puts array_4

puts "4. Combine array_1 & array_2 and keep only even elements"
puts array_4.select(&:even?)

puts "5. Combine array_1 & array_2 and delete elements if greater than 8"
puts array_4.select{|x|x<8}

puts "6. array_1 make cubes of all elements and add them "
puts array_1.map {|n|n*n*n}

puts "7. Combine array_1 & array_2 and find index of '8'"
puts array_3.each_index.select { |index| array_3[index] == 8}

puts "array_1: add 5 to each element "
puts array_1.map {|n|n+5}

puts "9. combine hash_1 & hash_2"
puts hash_1.merge(hash_2)

puts "10. replace values of hash_1 with elements from array_1"
 array_4=hash_1.to_a
puts array_4.replace(array_1)


puts "11. Make sum of integer values of hash_2"
total=0;
hash_2.each{|key,val|"#{total+=val.to_i}"}
puts total

puts "12. Make upcase of all values of hash_1"
array_5=hash_1.values
puts array_5.map(&:upcase)