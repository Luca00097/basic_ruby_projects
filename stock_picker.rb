def stock_picker(prices)
  lowest_price = prices[0]
  lowest_day = 0
  best_profit = 0
  best_buy_day = 0
  best_sell_day = 1

  prices.each_with_index do |price, day|
    profit = price - lowest_price

    if profit > best_profit
      best_profit = profit
      best_buy_day = lowest_day
      best_sell_day = day
    end

    if price < lowest_price
      lowest_price = price
      lowest_day = day
    end
  end

  if best_profit == 0
    "No profit possible"
  else
    [best_buy_day, best_sell_day]
  end
end

puts stock_picker([17,3,6,9,15,8,6,1,10])

puts stock_picker([10, 8, 6, 4, 2])

puts stock_picker([10, 1, 2, 3, 4])