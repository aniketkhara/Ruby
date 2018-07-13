
require_relative"product"
require_relative"display"

ATTRIBUTES = { name: 'String' }

class AcceptInput
  def intialize(attrs)
    @attrs = attrs
  end

  def display_price_list
  end

  def accept()
    pattern = /^([a-z]+)(,\s*[a-z]+)*$/i
    ATTRIBUTES.each do |attr, obj_type|
      puts "Please enter all the items purchased separated by a comma"
    data = gets.chomp
      if ( data =~ pattern )
       puts "valid data"
       product_name = data.spilt(",")
       price_calculator=PriceCalculator.new(product_name)
       purchase_product=Product.new(data).products
      else
       puts "invalid data"
      end
     end
  end

end

input=AcceptInput.new
input.display_price_list
input.accept
