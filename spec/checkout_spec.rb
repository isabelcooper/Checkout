require 'checkout'

describe Checkout do
  before(:all) do
    @checkout = Checkout.new
  end

   it 'should be able to scan an item and return price' do
   expect(@checkout.scan_item("apple")).to eq 1
 end

  it 'should store all the scanned items in an array' do
    expect(@checkout.basket).to be_a Array
  end

  it 'should total the price of stored items' do
    2.times {(@checkout.scan_item("apple"))}
    expect(@checkout.total_price).to eq 3
    2.times {(@checkout.scan_item("fish"))}
    expect(@checkout.total_price).to eq 9
  end

  it 'should reformat price' do
    total = @checkout.total_price
    expect(total.format_money).to eq "£9\.00"
  end



end
