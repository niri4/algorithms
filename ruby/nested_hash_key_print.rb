
# write a program to print nested hash key
#input = { "a":{ "b":{ "c": [] }, "d": {} }, "e": "e", "f": nil, "g": -2 }

#Output = ["a.b.c", "a.d", "e", "f", "g"]


def hash_associate_keys(inputs, str: "", results: [])
  inputs.each do |k, v|
    result  = str.empty? ? "#{k}" : "#{str}.#{k}"
    unless v.is_a?(Hash) && !v.empty?
      results << result
    else
      hash_associate_keys(v, str: result, results: results)
    end
  end
  results
end

input = { "a":{ "b":{ "c": [] }, "d": {} }, "e": "e", "f": nil, "g": -2 }
puts hash_associate_keys(input)


# with if case

# def nested_keys(input, str: "", results: [])
#   input.each do |k, v|
#     result = str.empty? ? "#{k}" : "#{str}.#{k}"

#     if v.is_a?(Hash) && !v.empty?
#       nested_keys(v, str: result, results: results)
#     else
#       results << result
#     end 
#   end
#   results
# end
# input = { "a":{ "b":{ "c": [] }, "d": {} }, "e": "e", "f": nil, "g": -2 }
# puts nested_keys(input)