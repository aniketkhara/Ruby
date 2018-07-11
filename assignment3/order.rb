class Order
  def customer_information
  puts "enter product id"
  product_id = gets.chomp
  puts "product name"
  product_name = gets.chomp
  puts "card number"
  card_no = gets.chomp
  puts "CVV"
  cvv = gets.chomp
  information=" #{product_id}"+"   #{product_name}"+"   #{card_no}"+"   #{cvv}"
  end
end
order=Order.new
order.customer_information
