def stock_picker(stock_prices)
    #loop, 
        #[0] - [every other variable]
        #store in array (or hash?)
        #pop off [0], [1] becomes next [0]
        #repeat
    #find highest profit in array (or hash)
    #return indexes of highest profit.
    highest_profit = Hash.new(0)
    count = 0
    while stock_prices.length > 1

        profit_sorter = Hash.new(0)
        stock_prices.each_with_index do |stock, index|
            #Stores highest number with an array of indexes used
            x = stock_prices[index]
            y = stock_prices[0]
            profit_sorter[x - y] = [stock_prices.index(y), stock_prices.index(x)]
            p profit_sorter
        end
        #TODO: Add this into the loop, so that I get an array of max's, only.
        p highest_profit[profit_sorter.sort.max[0]] = profit_sorter.sort.max[1]
        
        count = count + 1
        stock_prices.shift
    end
    p highest_profit
    best_profit = highest_profit.sort.max

    best_profit[1]
end 

#p stock_picker([17,3,6,9,15,8,6,1,10])
#p stock_picker([3,8,6,5,4,7,22,8,6])
stock_picker([25,3,8,6,5,4,7,22,8,6])
#p stock_picker([25,3,8,6,5,4,7,22,8,6,1])
#p stock_picker([17,3,6,9,15,8,6,1,10])