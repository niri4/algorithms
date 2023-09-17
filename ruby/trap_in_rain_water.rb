# https://leetcode.com/problems/trapping-rain-water/submissions/

def trap(height)
  return 0 if height.empty?

  l = 0
  r = height.length - 1

  maxleft = height.first
  maxright = height.last
  res = 0

  while l < r
    if maxleft < maxright
      l += 1
      maxleft = [maxleft, height[l]].max
      res += maxleft - height[l]
    else
      r -= 1
      maxright = [maxright, height[r]].max
      res += maxright - height[r]
    end
  end
  res
end
