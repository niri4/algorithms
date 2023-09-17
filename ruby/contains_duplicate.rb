#https://leetcode.com/problems/contains-duplicate/description/

def contains_duplicate(nums)
  hash = {}
  nums.each do |num|
    return true unless hash[num].nil? 
    
    hash[num] = num
  end
  false 
end
