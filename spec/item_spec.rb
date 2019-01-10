require 'item'

describe Item do
  # it 'should return price of item on return_price' do
  #   item = Item.new
  #   expect(item.return_price).to eq 5
  # end

  it 'should return prices from a hash for different items' do
    apple = Item.new("apple")
    expect(apple.return_price).to eq "0.50"
    fish = Item.new("fish")
    expect(fish.return_price).to eq "2.00"
  end
end
