# https://leetcode.com/problems/permutation-in-string/submissions/

# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_inclusion(s1, s2)
  if s1.length > s2.length
    return false
  end

  s1count, s2count = [0] * 26, [0] * 26

  (0...s1.length).to_a.each do |i|
    s1count[s1[i].ord - "a".ord] += 1
    s2count[s2[i].ord - "a".ord] += 1
  end

  matches = (0...26).to_a.select {|i| s1count[i] == s2count[i] }.length

  for l in (0...(s2.length - s1.length)).to_a
    if matches == 26
      return true
    end

    i = s2[l].ord - "a".ord
    s2count[i] -= 1
    if s2count[i] == s1count[i]
      matches += 1
    elsif s2count[i] == s1count[i] - 1
      matches -= 1
    end
   
    i = s2[l + s1.length].ord - "a".ord
    s2count[i] += 1
    if s2count[i] == s1count[i]
      matches += 1
    elsif s2count[i] == s1count[i] + 1
      matches -= 1
    end
  end
  matches == 26
end
