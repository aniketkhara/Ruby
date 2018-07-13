ATTRIBUTES = { name: 'String', quantity: 'Fixnum', card_no: 'String', cvv: 'String', :customer_id: 'Fixnum' }
class ConsoleInputTaker
  def initialize(attrs)
    @attrs = attrs
  end

  def accept()
    accepted_attrs = {}
    ATTRIBUTES.each do |attr, obj_type|
      puts "Please enter #{attr}"
      data = gets.chomp
      while data == obj_type

      end
      if data == obj_type
        accepted_attrs []
      else
        'Enter proper '
      end
    end
  end
end



class FileStorage
  attr_accessor :filename

  def initialize(filename)
    @filename = filename
  end

  # write a line
  def append(line)
    File.open("data/#{filename}", "a") { |file| file.puts line }
  end

  def remove(line)

  end

end





require_relative 'file_storage'
SEPERATOR = '|'
ORDER_FILE = 'orders.dat'

ATTRIBUTES = { name: 'string', quantity: 'integer', card_no: 'string', cvv: 'string', :customer_id: 'integer' }

class Order
  attr_accessor *ATTRIBUTES
  def initialize(attrs)
    @attrs = attrs
  end

  def add
    FileStorage.new(ORDER_FILE).append(to_line)
  end

  def to_line
    @attrs.values.join(SEPERATOR)
  end
end

order = Order.new({name: 'bottle', quantity: 3, price: 40, customer_id: 1, card_no: 1234, cvv: 233 })


SEPERATOR = '|'
PRODUCT_FILE = 'products.dat'
class Product
  attr_accessor :name, :quantity, :company, :price
  def initialize(attrs)
    @attrs = attrs
  end

  def add
    FileStorage.new(PRODUCT_FILE).append(to_line)
  end

  def to_line
    @attrs.values.join(SEPERATOR)
  end
end