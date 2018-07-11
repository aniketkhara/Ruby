require_relative "product"
class Files
  def add_information(add_line)
    File.open('inventory.txt', 'a+') { |file| file.write(add_line) }
  end

  def remove_line(delete_id)
  read_file = File.new('inventory.txt', "r").read
  write_file = File.new('inventory.txt', "w")
  read_file.each_line do |line|
  write_file.write(line) unless line.include? delete_id
    end
  end

  def edit_line(product_id,line)
   read_file = File.new('inventory.txt', "r").read
   write_file = File.new('inventory.txt', "w")
   read_file.each_line do |line|
   write_file.write(line) unless line.include? product_id
  end
  File.open('inventory.txt', 'a+') {|file| file.write(line) }
  end

  def list_items()
    file='inventory.txt'
    File.open('inventory.txt').each do |line|
    print " #{line}"
   end

  def search_item(product_name)
    File.open("inventory.txt") do |f|
    f.each_line do |line|
      if line =~ /#{product_name}/
      puts "Product Found: #{line}"
      else
        puts "Product not found"
      end
    end
  end

  def orders(product_id,information)
    file='orders.txt'
    f = File.open(file, "w"){ |file| file.write(information)}
    File.foreach("inventory.txt").with_index do |line,line_number|
      if line =~ /#{product_id}/
     a = line.spilt (" ")
     a[3] = a[3].to_i-1
     l = a[0].to_s"  " + a[1].to_s"  " + a[2].to_s"  " + a[3].to_s"  "
      end
    end
  end

end

files=Files.new