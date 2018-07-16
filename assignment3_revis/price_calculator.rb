require_relative"product"

class PriceCalculator

  def initialize(sum,saved_money)
    @sum = sum
    @saved_money = saved_money
  end

  def calculate_count
    product_count = Hash.new(0)
    product_name.each{|name|product_count[name]+=1}
  end

  def calculate_price
    product_count.each do |k,v|
      orginal_price = hash_array[k]['price'].to_f*v
      price=calculate_discount(v,hash_array[k]['offer_on'].to_f,hash_array[k]['offer_price'].to_f,hash_array[k]['price'].to_f)
      puts "#{k}\t#{separator}#{v}\t$#{price}"
      @sum+=price
      @saved_money += actual_price - price
  end

  def calculate_discount(no_of_products,no_of_discount_products,discount_price,price)
    if no_of_discount_products!=0
      discount = no_of_discount_products * discount_price / no_of_discount_products
      no_of_products - = no_of_discount_products
      return discount + (no_of_products*price)
    else
      return no_of_products * price
  end

end
price_calculator=PriceCalculator.new