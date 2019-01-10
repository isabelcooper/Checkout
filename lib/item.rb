class Item

  def initialize(type)
    @type = type
    @price = {"apple" => "0.50",
      "fish" => "2.00",
      "bread" => "1.30"
    }
  end

  def return_price
    @price[@type]
  end

end
