# https://leetcode.com/problems/koko-eating-bananas/submissions/

# @param {Integer[]} piles
# @param {Integer} h
# @return {Integer}
def min_eating_speed(piles, h)
  l = 1
  r = piles.max
  res = r

  while l <= r
    k = (l + r)/2
    hours = 0
    piles.map { |pile| hours += (pile / k.to_f).ceil }

    if hours <= h
      r = k - 1
      res = [res, k].min
    else
      l = k + 1
    end
  end
  res 
end
