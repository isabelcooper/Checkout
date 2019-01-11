require_relative 'item'
require 'money'

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

  def format_money(total)
    Money.new((total*100), "GBP").format
  end

private

  def check_item_price(item)
    Item.new(item).return_price
  end

  def add_to_basket(item)
    @basket << item
    @total_price += check_item_price(item)
  end

end
