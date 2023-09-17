# https://leetcode.com/problems/valid-parentheses/submissions/

def is_valid(s)
  stack = []
  match = {
    "{" => "}",
    "(" => ")",
    "[" => "]"
  }

  s.each_char do |c|
    if match.key?(c)
      stack << c
    else
      return false if stack.empty? || match[stack.pop] != c
    end
  end
  stack.empty?
end
