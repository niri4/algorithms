# https://leetcode.com/problems/product-of-array-except-self/

# handle problem with prefix multiplication and store in prefix array
# same do for postfix  and store in posstfix array and then multiplication
# below solution is optimal incase of space complexity now except result array it use space of O(1) and time (n)

# for example in case [1,2,3,4]
# prefix  [1, 1, 2, 6] by default 1
# postfix [24, 12, 4, 1] by default 1
# result is prefix * postfix
# [24, 12, 8, 6]

# below solution explaination
# for example in case [1,2,3,4]
# for prefix store in result by default 1
# result = [1, 1, 2, 6] 
# postfix store in result from last to 0 by default is 1 
# result = [24, 12, 8, 6]


def product_except_self(nums)
    res = Array.new(nums.length) { 1 }

    prefix = 1
    # first compute the result of prefix and store in res
    nums.each_with_index do |num, index|
        res[index] = prefix
        prefix *= num
    end

    postfix = 1
    # compute the result of postfix and store in res in reverse order
    (nums.length - 1).downto(0).each do |index|
        res[index] *= postfix
        postfix *= nums[index]
    end

    res
end
