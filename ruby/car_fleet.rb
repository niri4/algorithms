# https://leetcode.com/problems/car-fleet/submissions/

# @param {Integer} target
# @param {Integer[]} position
# @param {Integer[]} speed
# @return {Integer}
def car_fleet(target, position, speed)
  cars = position.zip(speed).sort_by(&:first).reverse
  stack = []

  cars.each do |pos, s|
    stack.append((target - pos)/s.to_f)
    if stack.length >= 2 && stack.last <= stack[-2]
      stack.pop
    end
  end
  stack.length
end
