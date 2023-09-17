# https://leetcode.com/problems/binary-search/submissions/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  l = 0
  r = nums.length - 1

  while l <= r
    mid = l + (r - l)/2

    if nums[mid] > target
      r = mid - 1 # we are doing this because of mid values
    elsif nums[mid] < target
      l = mid + 1
    else
     return mid
    end
  end

  return -1
end
