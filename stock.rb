def stock_picker(stock_prices)
    #loop, 
        #[0] - [every other variable]
        #store in array (or hash?)
        #pop off [0], [1] becomes next [0]
        #repeat
    #find highest profit in array (or hash)
    #return indexes of highest profit.
    highest_profit = Hash.new(0)
    while stock_prices.length > 1
        profit = 0
        stock_prices.each_with_index do |stock, index|
            #Stores highest number with an array of indexes used
            highest_profit[stock_prices[index] - stock_prices[0]] = 
        end
        p highest_profit
        stock_prices.shift
    end
end 

p stock_picker([17,3,6,9,15,8,6,1,10])
# p stock_picker([3,8,6,5,4,7,22,8,6])
# p stock_picker([25,3,8,6,5,4,7,22,8,6])
# p stock_picker([25,3,8,6,5,4,7,22,8,6,1])