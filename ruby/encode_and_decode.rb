#https://leetcode.com/problems/encode-and-decode-strings/

# Input: ["lint","code","love","you"]
# encode str: "4#lint4#code4#love3#you"

def encode(strs)
  res = ""
  
  for s in strs
    res += s.length.to_s + "#" + s
  end
  
  res
end

# Input: "4#lint4#code4#love3#you"
# decode arr: ["lint", "code", "love", "you"]

def decode(s)
  res = []
  i = 0

  while i < s.length
    j = i
    while s[j] != "#"
      j += 1
    end
    length = s[i...j].to_i
    res.append(s[j + 1 ... j + 1 + length])
    i = j + 1 + length
  end
  res
end
