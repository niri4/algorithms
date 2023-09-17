# fibnocci without memorize
def fibno(number)
  if number <= 1
    return number
  else
    fibno(number - 1) + fibno(number - 2)
  end
end


# fibnocci with memorize
# # 1 1 2 3 5 8
def fibno(number, memo: {})
  return memo[number.to_s] if memo[number.to_s]
  if number <= 1
    return number
  else
    result = fibno(number - 1, memo: memo) + fibno(number - 2, memo: memo)
    memo[number.to_s] = result
    result
  end
end

number  = 19 + 1
puts fibno(number)