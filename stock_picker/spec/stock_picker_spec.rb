require 'rspec'
require_relative '../stock_picker'

describe '#stock_picker' do
  it 'returns the correct days for maximum profit' do
    expect(stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4]) # buy on day 1, sell on day 4
  end

  it 'returns the correct days for multiple price increases' do
    expect(stock_picker([1, 2, 3, 4, 5])).to eq([0, 4]) # buy on day 0, sell on day 4
  end

  it 'returns nil when prices constantly decrease' do
    expect(stock_picker([10, 9, 8, 7, 6, 1])).to be_nil # no profit possible
  end

  it 'returns the correct days for small fluctuations' do
    expect(stock_picker([5, 4, 3, 2, 6, 1])).to eq([3, 4]) # buy on day 3, sell on day 4
  end

  it 'returns nil when prices array is empty or has one price' do
    expect(stock_picker([])).to be_nil # no prices
    expect(stock_picker([10])).to be_nil # only one price
  end

  it 'returns the correct days even if the lowest price is on the last day' do
    expect(stock_picker([10, 12, 5, 8, 1])).to eq([2, 3]) # buy on day 2, sell on day 3
  end

  it 'returns the correct days even if the highest price is on the first day' do
    expect(stock_picker([20, 15, 10, 8, 25])).to eq([3, 4]) # buy on day 3, sell on day 4
  end

  it 'returns the correct days when the largest profit is in the middle' do
    expect(stock_picker([5, 11, 2, 7, 20])).to eq([2, 4]) # buy on day 2, sell on day 4
  end
end