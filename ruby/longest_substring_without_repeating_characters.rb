# https://leetcode.com/problems/longest-substring-without-repeating-characters/submissions/

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  return s.length if s.length < 1

  windows = []
  appear = {}
  max = 0
  s.each_char do |c|

    if appear.key?(c)
      while appear.key?(c)
        appear.delete(windows.shift)
      end
    end

     windows << c
    appear[c] = c
    max = windows.length if windows.length > max
  end
  max
end
