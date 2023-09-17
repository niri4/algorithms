# https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/submissions/

# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
  l = 0
  r = nums.length - 1

  while l < r
    mid = (l+r)/2
    if nums[r] < nums[mid]
      l = mid + 1
    else
      r = mid
    end
  end

  nums[l]
end

