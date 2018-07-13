require_relative "accept"

class Milk_Items

  def initialize(attrs)
    @attrs = attrs
  end

  def calculate_milk()
    cost = 2.5
    unit_cost = 3.97
    offer = 2
    my_string = "milk"
    count = @attrs.scan(my_string).length
    if count % offer == 0
      div = count / 1
      price = div * cost
      puts price
    else
      div = count - 1
      sub_total = div * cost
      total = sub_total + unit_cost
  end

end

purchase_milk=Milk_Items.new