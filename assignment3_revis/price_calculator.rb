require_relative"product"

class PriceCalculator

  def initialize(attrs)
    @attrs = attrs
  end

  def calculate_count
    product_count = Hash.new(0)
    product_name.each{|name|product_count[name]+=1}
  end

  def calculate_price


  end



end
price_calculator=PriceCalculator.new