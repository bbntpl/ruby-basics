require 'rspec'
require_relative '../bubble_sort'

describe '#bubble_sort' do
  it 'sorts an array of numbers in ascending order' do
    expect(bubble_sort([4, 3, 78, 2, 0, 2])).to eq([0, 2, 2, 3, 4, 78])
  end

  it 'returns an already sorted array unchanged' do
    expect(bubble_sort([1, 2, 3, 4, 5])).to eq([1, 2, 3, 4, 5])
  end

  it 'sorts an array in descending order correctly' do
    expect(bubble_sort([5, 4, 3, 2, 1])).to eq([1, 2, 3, 4, 5])
  end

  it 'handles an array with negative numbers' do
    expect(bubble_sort([3, -1, 0, -5, 10])).to eq([-5, -1, 0, 3, 10])
  end

  it 'handles an array with duplicate values' do
    expect(bubble_sort([4, 3, 3, 2, 2, 1])).to eq([1, 2, 2, 3, 3, 4])
  end

  it 'returns an empty array when given an empty array' do
    expect(bubble_sort([])).to eq([])
  end

  it 'returns the same array when there is only one element' do
    expect(bubble_sort([5])).to eq([5])
  end
end
