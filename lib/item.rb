class Item
  # stores and returns item details

  attr_reader :price
  def initialize(type)
    @type = type
    @price = calculate_price
  end

private

  def calculate_price
    price_list = { 'apple' => 1, 'fish' => 3, 'bread' => 2 }
    price_list[@type]
  end

end
