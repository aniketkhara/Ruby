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
    File.open("inventory.txt") do |f|
    f.each_line do |line|
    if line =~ /#{product_id}/
    line = " #{product_id}"+"   #{product_name}" + "   #{ }"+ "   #{ }-1"
    end
    end
    file='orders.txt'
    f = File.open(file, "w"){ |file| file.write(information)}
  end
end

O=Order.new
O.customer_information
end