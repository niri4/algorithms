#https://leetcode.com/problems/two-sum/submissions/

def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, index|
      return [hash[target - num], index] unless hash[target - num].nil?

      hash[num] = index
  end 
  nil
end
