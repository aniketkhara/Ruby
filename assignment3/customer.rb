require_relative "product"
require_relative "order"
class Customer
  def choice
   puts "1.list all products 2.search products 3.buy product enter choice"
   customer_choice = gets.chomp
  if customer_choice == '1'
    customer.list
  elsif customer_choice == '2'
    customer.search
  elsif customer_choice == '3'
    order.customer_information
  else
    puts "invalid choice"
  end
  end

end
customer=Customer.new
customer.choice
