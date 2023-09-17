# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/submissions/

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  min = prices.first
  max = 0

  prices[1...].each do |price|
    profit = price - min
    max = profit > max ? profit : max
    min = price if price < min
  end
  max
end
