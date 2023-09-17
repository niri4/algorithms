# https://leetcode.com/problems/daily-temperatures/description/

# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
  stack = []
  res = Array.new(temperatures.length, 0)

  temperatures.each_with_index do |temp, i|
    while !stack.empty? && stack.last[:temp] < temp
      val = stack.pop
      res[val[:index]] = i - val[:index]
    end
    stack.append({temp: temp, index: i})
  end
  
  res
end
