require 'checkout'

describe Checkout do

  let(:item_fish) { double(:item_fish, type: "fish", price: 3) }
  let(:item_class) { double(:item_class, new: item_fish) }
  let(:subject) { Checkout.new }

  describe '#scan_item' do

    it 'should return price of item on price' do
      expect(subject.scan_item(item_fish)).to eq 3
    end

    it 'should add item to basket' do
      subject.scan_item(item_fish)
      expect(subject.basket).to include(item_fish)
    end

  end

  describe '#print_basket_price' do

    it 'should return the formated basket total' do
      subject.scan_item(item_fish)
      expect(subject.print_basket_price).to eq "£3.00" 
    end
  end


end
