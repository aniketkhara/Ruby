class Product
  def add
  @@id=0
  puts "enter product name"
  product_name=gets.chomp
  puts "enter product price"
  price=gets.chomp
  puts "enter stock item "
  stockitem=gets.chomp
  puts "enter company name"
  companyname=gets.chomp
  line=+product_name+price+stockitem+companyname
  File.open('inventory.txt', 'w') { |file| file.write(line) }
  @@id+1
  end
  def remove
      puts "enter id to delete"
      gets @id
      File.open('inventory.txt', 'w') do |out_file|
      File.foreach('inventary.txt') do |line|
         out_file.puts line unless line =~ /@id/
  end
  def edit
    puts "enter id of the product to edit"
    product_id=gets.chomp
    if File.readlines("inventory.txt").grep(/product_id/)
      print "product found"
    puts "enter product price"
    price=gets.chomp
    puts "enter stock item "
    stockitem=gets.chomp
    puts "enter company name"
    companyname=gets.chomp
    line=+price+stockitem+companyname
      File.open('inventory.txt', 'w') { |file| file.write(line) }
    end
  end
  def list
   puts "details of file"
   file='inventory.txt'
   f = File.open(file, "r")
   f.each_line { |line|
    puts "#{line}"
    f.close
   }
   end
   def search
    puts "enter name of the product to be searched"
    product_name=gets.chomp
    if File.readlines("inventory.txt").grep(/product_name/) == 1
    print "product found"
    else
    print "product not found"
    end
    def customer_information
      puts "enter product id"
      product_id = gets.chomp
      puts "product name"
      product_name = gets.chomp
      puts "card number"
      card_no = gets.chomp
      puts "CVV"
      cvv = gets.chomp
      information=+product_id+product_name+card_no+cvv
      file='orders.txt'
      f = File.open(file, "w"){ |file| file.write(information)}
      f.close
      end
end



P=Product.new
