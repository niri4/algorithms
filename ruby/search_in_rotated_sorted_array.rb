# https://leetcode.com/problems/search-in-rotated-sorted-array/submissions/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  l = 0
  r = nums.length - 1

  while l <= r
    mid = (l+r)/2

    if target == nums[mid]
      return mid
    end
    
    # left sorted portion
    if nums[l] <= nums[mid]
      if target > nums[mid] || target < nums[l]
        l = mid + 1
      else
        r = mid - 1
      end
    else
      if target < nums[mid] || target > nums[r]
        r = mid - 1
      else
        l = mid + 1
      end
    end
  end

  return -1
end


