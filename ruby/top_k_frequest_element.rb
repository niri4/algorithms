#https://leetcode.com/problems/top-k-frequent-elements/submissions/

# use bucket sort for linear time O(n)
# we do bucket sort on no of time one element in array for example [1,1,1,2,2,3]
# here 1 comes 3 so 3 count similarly for 2 count is 2 and for 3 it is one 1 
# if we apply on bucket sort array length then it might be chance in array we have milions of record then it that case it become issue

def top_k_frequent(nums, k)
  hash = Hash.new(0)
  count_arr = Array.new(nums.length + 1) { [] }
  res = []
  
  nums.each do |num|
    hash[num] += 1
  end

  hash.each {|k,v| count_arr[v] << k }

  nums.length.downto(1) do |n|
    return res if k <= 0
    next if count_arr[n].empty?
    
    res.concat(count_arr[n].take(k))
    k -= count_arr[n].length
  end
  res
end
