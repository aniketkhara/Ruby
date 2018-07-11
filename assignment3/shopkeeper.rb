require_relative "product"
class Shopkeeper
def choice
  puts "enter choice 1.add product 2.remove product 3.search product 4.edit product 5.list all products"
  shopkeeper_choice=gets.chomp
  if shopkeeper_choice == '1'
    then P.add
  elsif shopkeeper_choice == '2'
    then P.remove
  elsif shopkeeper_choice == '3'
    then P.search
  elsif shopkeeper_choice == '4'
    then P.edit
  elsif shopkeeper_choice == '5'
    then P.list
  else
  puts "invalid choice"
  end
end

S=Shopkeeper.new
S.choice
end




