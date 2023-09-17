#https://leetcode.com/problems/longest-consecutive-sequence/submissions/

def longest_consecutive(nums)
    set = Set.new(nums)
    longest = 0

    for num in nums
        if !set.include?(num -1)
            length = 0
            while (set.include?(num + length)) do
                length += 1
            end
            longest = [length, longest].max
        end
    end
    longest
end
