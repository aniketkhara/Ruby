require_relative "accept"
require_relative "display"

class AppleItems

  def initialize(attrs)
    @attrs = attrs
  end

  def calculate_apple()
    unit_cost = 0.89
    my_string = "apple"
    apple_count = @attrs.scan(my_string).length
    apple_price = apple_count * unit_cost
    display_items=Display_Items.new(apple_count,apple_price)
  end

end

purchase_apple=AppleItems.new