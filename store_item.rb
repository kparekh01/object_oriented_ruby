microwave = {color: "grey", price: 200, weight: 20}
rifle = {color: "black", price: 30, weight: 5}
bat = {color: "brown", price: 15, weight: 2}

class Items
  attr_reader :color, :price, :weight
  def initialize(hash)
    @color = hash[:color]
    @price = hash[:price]
    @weight = hash[:weight]
  end
end

class Food < Items
  def initialize(hash)
    super
    shelf_life = hash[:shelf_life]
  end
end
