require 'rspec'
require_relative '../substrings'

RSpec.describe '#substrings' do
  let(:dictionary) { ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"] }

  it 'returns correct counts for single word input' do
    result = substrings("below", dictionary)
    expected = { "below" => 1, "low" => 1 }
    expect(result).to eq(expected)
  end

  it 'returns correct counts for multiple words input' do
    result = substrings("Howdy partner, sit down! How's it going?", dictionary)
    expected = {
      "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1,
      "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1
    }
    expect(result).to eq(expected)
  end

  it 'handles case insensitivity' do
    result = substrings("BELOW", dictionary)
    expected = { "below" => 1, "low" => 1 }
    expect(result).to eq(expected)
  end

  it 'returns an empty hash if no substrings are found' do
    result = substrings("nothing", dictionary)
    expect(result).to eq({ "i" => 1})
  end

  it 'works with empty string as input' do
    result = substrings("", dictionary)
    expect(result).to eq({})
  end

  it 'handles words with overlapping substrings' do
    result = substrings("downown", dictionary)
    expected = { "down" => 1, "own" => 1 }
    expect(result).to eq(expected)
  end
end
