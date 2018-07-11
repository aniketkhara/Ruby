require_relative "product.rb"
class Customer
  def choice
   puts "1.list all products 2.search products 3.buy product enter choice"
  end
end
C=Customer.new
C.choice
customer_choice = gets.chomp
  if customer_choice == '1'
  then P.list
  elsif customer_choice == '2'
  then P.search
  elsif customer_choice == '3'
  then P.customer_information
  else
    puts "invalid choice"
  end
