# https://leetcode.com/problems/generate-parentheses/submissions/
# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  parenthesis = []
  backtrace(n, "", parenthesis, 0, 0)
  parenthesis
end

def backtrace(n, pre, parenthesis, open, close)
  if pre.length == n * 2
    parenthesis << pre
  else
    open < n && backtrace(n, pre + "(", parenthesis, open + 1, close)
    close < open && backtrace(n, pre + ")", parenthesis, open, close + 1)
  end
end
