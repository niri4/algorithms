# https://leetcode.com/problems/largest-rectangle-in-histogram/submissions/

# @param {Integer[]} heights
# @return {Integer}
def largest_rectangle_area(heights)
  stack =[]
  maxarea = 0
  
  heights.each_with_index do |h, i|
   
    start = i
    while !stack.empty? && stack.last[1] > h
      index, height = stack.pop
      maxarea = [maxarea, (height * (i - index))].max
      start = index
    end
    stack.append([start, h])
   end

   stack.each do |s|
      maxarea = [maxarea, (s[1] * (heights.length - s[0]))].max
   end

   maxarea
end
