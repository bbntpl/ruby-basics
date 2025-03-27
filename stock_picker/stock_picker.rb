def stock_hash(price, day_index)
  { price:, day_index: }
end

def stock_picker(stock_prices)
  lowest_stock = stock_hash(stock_prices[0], 0)
  total_days = stock_prices.length
  maximum_profit = { value: 0, day_indices: nil }

  total_days.times do |i|
    price = stock_prices[i]
    is_last_day = total_days != i - 1
    potential_profit = price - lowest_stock[:price]
    
    if i == 0
      next
    elsif price < lowest_stock[:price]
      lowest_stock[:price] = price 
      lowest_stock[:day_index] = i 
    elsif potential_profit > maximum_profit[:value]
      maximum_profit[:value] = potential_profit
      maximum_profit[:day_indices] = [lowest_stock[:day_index], i]
    end 
  end 

  return maximum_profit[:day_indices]
end

puts stock_picker([1, 5, 4, 6, 7])