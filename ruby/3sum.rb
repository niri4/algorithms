#https://leetcode.com/problems/3sum/

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  res = []
  nums.sort!
  nums.each_with_index do |num, index|
    num > 0 && break

    next if index > 0 && num == nums[index -1]
        
    l = index + 1 
    r = nums.length - 1

    while l < r
      threesum = num + nums[l] + nums[r]

      if threesum > 0
        r -= 1
      elsif threesum < 0
        l += 1 
      else
        res.append([num, nums[l], nums[r]])
        l += 1
        r -= 1
        while nums[l] == nums[l - 1] && l < r
          l += 1
        end
      end
    end
  end
  res
end
