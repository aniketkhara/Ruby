require_relative"accept"
class Product

  def initialize(data)
    @data = data
  end

  def products
    h = Hash.new{|hash,key| hash[key] = {} }
    h['milk'].store 'price',3.97
    h['milk'].store 'offer_price',5
    h['milk'].store 'offer_on',2


    h['bread'].store 'price',2.17
    h['bread'].store 'offer_price',6
    h['bread'].store 'offer_on',3


    h['banana'].store 'price',0.99
    h['banana'].store 'offer_price',0
    h['banana'].store 'offer_on',0


    h['apple'].store 'price',0.89
    h['apple'].store 'offer_price',0
    h['apple'].store 'offer_on',0

    return h
     price_calculator=PriceCalculator.new(h)
  end

purchase_product=Product.new
