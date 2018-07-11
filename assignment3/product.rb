require_relative "file_operations"
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
  add_line= " #{id+1}"+"||#{product_name}" + "||#{price}" + "||#{stockitem}" + "||#{companyname}"+"\n"
  files.add_information(add_line)
  end

  def remove
    puts "enter id to delete"
    delete_id=gets.chomp
    files.remove_line(delete_id)
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
    line=" #{product_id}"+"||#{product_name}" + "||#{price}" + "||#{stockitem}" + "||#{companyname}"
    files.edit_line(product_id,line)
  end

  def list
   puts "details of file"
   files.list_items
  end

  def search
    puts "enter name of the product to be searched"
    product_name=gets.chomp
    files.search_item(product_name)
  end

end


product = Product.new
product.add

