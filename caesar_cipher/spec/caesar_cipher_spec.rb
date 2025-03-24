# caesar_cipher_spec.rb

require 'spec_helper'
require_relative '../caesar_cipher.rb'

RSpec.describe '#caesar_cipher' do
  it 'shifts letters by a given positive number' do
    expect(caesar_cipher('abc', 3)).to eq('def')
  end

  it 'shifts letters by a given negative number' do
    expect(caesar_cipher('def', -3)).to eq('abc')
  end

  it 'wraps around from z to a' do
    expect(caesar_cipher('xyz', 3)).to eq('abc')
  end

  it 'maintains the case of the letters' do
    expect(caesar_cipher('AbC', 3)).to eq('DeF')
  end

  it 'does not change non-alphabet characters' do
    expect(caesar_cipher('Hello, World!', 5)).to eq('Mjqqt, Btwqi!')
  end

  it 'handles a shift of 0' do
    expect(caesar_cipher('unchanged', 0)).to eq('unchanged')
  end

  it 'handles large positive shifts' do
    expect(caesar_cipher('abc', 29)).to eq('def')
  end

  it 'handles large negative shifts' do
    expect(caesar_cipher('def', -29)).to eq('abc')
  end
end
