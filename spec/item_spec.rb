require 'item'

describe Item do
  let(:apple_item) { Item.new('apple') }
  let(:fish_item)  { Item.new('fish') }

  it 'should return the correct price for each item' do
    expect(apple_item.price).to eq 1
  end

  it 'should return the correct price for each item' do
    expect(fish_item.price).to eq 3
  end


end
