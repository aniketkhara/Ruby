require_relative "accept"
require_relative "display"

class BananaItems

  def initialize(attrs)
    @attrs = attrs
  end

  def calculate_banana()
    unit_cost = 0.99
    my_string = "banana"
    banana_count = @attrs.scan(my_string).length
    banana_price = banana_count * unit_cost
    display_items=DisplayItems.new(banana_price,banana_count)
  end

end

purchase_banana=BananaItems.new