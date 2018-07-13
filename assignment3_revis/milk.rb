require_relative "accept"
require_relative "display"

class MilkItems

  def initialize(attrs)
    @attrs = attrs
  end

  def calculate_milk()
    cost = 2.5
    unit_cost = 3.97
    offer = 2
    my_string = "milk"
    milk_count = @attrs.scan(my_string).length
    if milk_count % offer == 0
      milk_price = milk_price * cost
      money_saved_milk = (milk_count * unit_cost) - milk_price

    elsif milk_count % offer == 1
      div = milk_count - 1
      sub_total = div * cost
      milk_price = sub_total + unit_cost
      money_saved_milk = (milk_count * unit_cost) - milk_price

    elsif milk_count > offer
      milk_price = milk_count * unit_cost
      money_saved_milk = 0

    end

end

purchase_milk=MilkItems.new