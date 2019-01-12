require_relative 'item'

class Checkout
  attr_reader :basket, :total_price

  def initialize
    @basket = []
    @total_price = 0
  end

  def scan_item(item)
    add_to_basket(item)
    check_item_price(item)
  end

  def print_basket_price
    format_money(@total_price)
  end

  private

  def check_item_price(item)
    Item.new(item).return_price
  end

  def add_to_basket(item)
    @basket << item
    @total_price += check_item_price(item)
  end

  def format_money(total)
    '£' + (total * 100).to_s.insert(-3, '.')
  end
end
