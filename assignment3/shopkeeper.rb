require_relative "product"
class Shopkeeper
def choice
  puts "enter choice 1.add product 2.remove product 3.search product 4.edit product 5.list all products"
  shopkeeper_choice=gets.chomp
  if shopkeeper_choice == '1'
    product.add
  elsif shopkeeper_choice == '2'
    product.remove
  elsif shopkeeper_choice == '3'
    product.search
  elsif shopkeeper_choice == '4'
    product.edit
  elsif shopkeeper_choice == '5'
    product.list
  else
  puts "invalid choice"
  end

end

shopkeeper=Shopkeeper.new
shopkeeper.choice
end




