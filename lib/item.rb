class Item
  def initialize(type)
    @type = type
    @price = { 'apple' => 1, 'fish' => 3, 'bread' => 2 }
  end

  def return_price
    @price[@type]
  end
end
