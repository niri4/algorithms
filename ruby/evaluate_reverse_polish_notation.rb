# https://leetcode.com/problems/evaluate-reverse-polish-notation/submissions/

# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
  operators = %w[+ - * /]
  stack = []
  
  tokens.each do |token|
    if operators.include?(token)
      b = stack.pop
      a = stack.pop

      result = operation_perform(token, a.to_i, b.to_i)
      stack.append(result)
    else
      stack.append(token)
    end
  end

  stack.pop.to_i 
end

def operation_perform(operator, a, b)
  case operator
  when "+"
    return a + b
  when "-"
    return a - b
  when "*"
    return a * b
  when "/"
    return (a.to_f / b).to_i
  else
    raise "Invalid operator #{operator}"
  end
end
