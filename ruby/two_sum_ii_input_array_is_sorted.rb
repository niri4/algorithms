#https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/

# we are doing this because number are sorted 
#we know if current_sum is greater 
#we need to decrease r and if more then increment l
# we are creating two pointer one is l and other is r
def two_sum(numbers, target)
  l, r = 0, numbers.length - 1

  while l < r
    current_sum = numbers[l] + numbers[r]

    if current_sum > target
      r -= 1
    elsif current_sum < target
      l += 1
    else
      return [l + 1, r + 1]
    end
  end
end
