string_1 = "i am learning Ruby language."
string_2 = "why? Coz it's cool and I like it."

puts "1.Make string_1 capital case(not uppercase)"
puts  string_1.capitalize

puts "2.Make string_1 lower case"
puts  string_1.downcase

puts "3.Change the string_1's each letter's case to the opposite case."
puts  string_1.swapcase

puts "4. Print string_1's characters count"
lower_case=string_1.count("a-z")
upper_case=string_1.count("A-Z")
puts count=lower_case+upper_case

puts "5. Check if string_1 contains the word ruby."
if string_1.include? "ruby"
   puts "String includes 'ruby'"
else
  puts "String does not include 'ruby'"
end

puts "6. Split string_2 by '?'"
puts string_2.split("?")

puts "7. Concat string_1 and string_2"
puts concate=string_1+string_2

puts "8. Concatenated string, change from 'I' to 'We' and make the capital case."
string_3=concate.sub('I',"We")
puts string_3.capitalize

puts "9.Convert string_1 to the symbol"
puts string_1.to_sym

puts "10. List methods available on strings"
puts string_1.methods

puts "11. Print strings' length difference"
puts string_2.length-string_1.length

puts "10. Convert `nil` to an array, string and float."
puts"converted from nil to array"
puts nil.to_a
puts"converted from nil to string"
puts nil.to_s
puts"converted from nil to float"
puts nil.to_f

puts "11.Write a method which tells if the number is even or odd?"

def odd_even(x)
  if (x%2==0)
    puts "even no"
  else
    puts "odd no"
  end
end

odd_even(52)

