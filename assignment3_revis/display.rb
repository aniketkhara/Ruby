require_relative"accept"
require_relative "product"
require_relative "price_calculator"


class DisplayItems

  def initialize(attrss)
    @attrss = attrss
  end

  def total_calculate
    @total = @milk_price + @bread_price + @apple_price + @banana_price
    @saved = @money_saved_bread + @money_saved_milk
  end

  def display_bill
    puts " Item     Quantity         Price "
    puts  "milk"    "#{milk_count}"  "#{milk_price}"
    puts  "bread"    "#{bread_count}" "#{bread_price}"
    puts  "apple"    "#{apple_count}" "#{apple_price}"
    puts  "\n"
    puts  "total" "#{total}"
    puts  "you saved" "#{saved}"
  end

end

display_items=DisplayItems.new
