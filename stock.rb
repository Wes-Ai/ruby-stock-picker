def stock_picker(stock_prices)
    highest_profit = 0;
    days_pair = []

    stock_prices.each_with_index do |price1, index1|
        stock_prices.each_with_index do |price2, index2|
            profit_check = price2 - price1

            #Check for a higher profit and if the indexes are correctly arranged
            if(profit_check > highest_profit && index1 < index2)
                highest_profit = profit_check
                days_pair = [index1, index2]
            end
        end
    end
    days_pair
end 

p "Expected: [1, 4], Actual: " + stock_picker([17,3,6,9,15,8,6,1,10]).to_s
p "Expected: [0, 6], Actual: " + stock_picker([3,8,6,5,4,7,22,8,6]).to_s
p "Expected: [1, 7], Actual: " + stock_picker([25,3,8,6,5,4,7,22,8,6]).to_s
p "Expected: [1, 6], Actual: " + stock_picker([25,3,8,6,5,4,22,8,6,1,7]).to_s
p "Expected: [7, 8], Actual: " + stock_picker([17,3,6,9,11,8,6,1,10]).to_s