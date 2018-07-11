require_relative "product"
require_relative "order"
class Customer
  def choice
   puts "1.list all products 2.search products 3.buy product enter choice"
   customer_choice = gets.chomp
  if customer_choice == '1'
  then P.list
  elsif customer_choice == '2'
  then P.search
  elsif customer_choice == '3'
  then O.customer_information
  else
    puts "invalid choice"
  end

  end
end
C=Customer.new
C.choice
