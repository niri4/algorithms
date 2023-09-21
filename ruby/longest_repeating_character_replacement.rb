# https://leetcode.com/problems/longest-repeating-character-replacement/submissions/

# @param {String} s
# @param {Integer} k
# @return {Integer}
def character_replacement(s, k)
  counts = Hash.new(0)
  maxf = 0
  res = 0
  l = 0

  s.each_char.with_index do |ch, r|
    counts[ch] += 1
    maxf = [maxf, counts[ch]].max

    if (r - l + 1) - maxf > k 
      counts[s[l]] -= 1
      l += 1
    end
    res = [res, (r - l + 1)].max
  end
  res
end

