#https://leetcode.com/problems/container-with-most-water/submissions/

def max_area(height)
  l = 0
  r = height.length - 1
  res = 0

  while l < r
    area = (r - l) * [height[l], height[r]].min
    res = [res, area].max

    if height[l] < height[r]
      l += 1
    else
      r -= 1
    end
  end
  res
end
