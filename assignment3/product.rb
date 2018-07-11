class Product
  def add
  puts "enter product name"
  product_name=gets.chomp
  puts "enter product price"
  price=gets.chomp
  puts "enter stock item "
  stockitem=gets.chomp
  puts "enter company name"
  companyname=gets.chomp
  id=File.foreach('inventory.txt').count
  id.to_s
  add_line= " #{id+1}"+"   #{product_name}" + "   #{price}" + "   #{stockitem}" + "   #{companyname}"+"\n"
  File.open('inventory.txt', 'a+') { |file| file.write(add_line) }
  end
  def remove
    puts "enter id to delete"
    delete_id=gets.chomp
    read_file = File.new('inventory.txt', "r").read
    write_file = File.new('inventory.txt', "w")
    read_file.each_line do |line|
    write_file.write(line) unless line.include? delete_id
    end
  end
  def edit
    puts "enter id of the product to edit"
    product_id=gets.chomp
    puts "enter product_name"
    product_name=gets.chomp
    puts "enter product price"
    price=gets.chomp
    puts "enter stock item "
    stockitem=gets.chomp
    puts "enter company name"
    companyname=gets.chomp
    line=" #{product_id}"+"   #{product_name}" + "   #{price}" + "   #{stockitem}" + "   #{companyname}"
    file_names = ['inventory.txt']
    file_names.each do |file_name|
    text = File.read("inventory.txt")
    new_contents = text.gsub(/#{product_id}/, line)
    puts new_contents
    File.open("inventory.txt", "w") {|file| file.puts new_contents }
    end
  end
  def list
   puts "details of file"
   file='inventory.txt'
   File.open('inventory.txt').each do |line|
   print " #{line}"
   end
  end
  def search
    puts "enter name of the product to be searched"
    product_name=gets.chomp
    File.open("inventory.txt") do |f|
    f.each_line do |line|
      if line =~ /#{product_name}/
      puts "Product Found: #{line}"
      else
        puts "Product not found"
      end
      end
      end
  end
end

P=Product.new
