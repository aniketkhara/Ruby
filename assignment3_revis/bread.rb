require_relative "accept"
require_relative "display"

class BreadItems

  def initialize(attrs)
    @attrs = attrs
  end

  def calculate_bread()
    cost = 2
    unit_cost = 2.17
    offer = 3
    my_string = "bread"
    bread_count = @attrs.scan(my_string).length
    if bread_count % offer == 0
      bread_price = bread_count * cost
      money_saved_bread = (bread_count * unit_cost) - bread_price

    elsif  bread_count % offer == 1
      div = bread_count - 1
      sub_total = div * cost
      bread_price = sub_total + unit_cost
      money_saved_bread = (bread_count * unit_cost) - bread_price


    elsif bread_count % offer == 2
      div = bread_count - 2
      sub_total = div * cost
      bread_price = sub_total + (unit_cost * cost)
      money_saved_bread = (bread_count * unit_cost) - bread_price


    elsif bread_count > offer
      bread_price = bread_count * unit_cost
      money_saved_bread = 0

    end
  end

end

purchase_bread=BreadItems.new