def stock_picker(prices)

	buy_index = 0
	sell_index = 0
	price_spread = 0

	prices.each do |buy|
		current_buy = buy
		prices.each do |sell|
			if ((sell - buy) > price_spread) && (prices.index(buy) < prices.index(sell))
				buy_index = prices.index(buy)
				sell_index = prices.index(sell)
				price_spread = sell - buy
			end
		end
	end
	puts buy_index
	puts sell_index
end

stock_picker([17,3,6,9,15,8,6,1,10])