# https://leetcode.com/problems/median-of-two-sorted-arrays/submissions/

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  a, b = nums1, nums2
  total = nums1.length + nums2.length
  half = total /2

  if nums1.length > nums2.length
    a, b = b, a
  end

  l, r = 0, a.length - 1

  while true
    i = (l + r)/2
    j = half - i - 2

    aleft = (i >= 0) ? a[i] : -Float::INFINITY
    aright = i + 1 < a.length ? a[i + 1] : Float::INFINITY
    bleft = (j >= 0) ? b[j] : -Float::INFINITY
    bright = (j + 1) < b.length ? b[j + 1] : Float::INFINITY

    if aleft <= bright && bleft <= aright
      if total % 2 != 0
        return [aright, bright].min
      else
        return (([aleft, bleft].max + [aright, bright].min).to_f/2)
      end
    elsif aleft > bright
      r = i - 1
    else
      l = i + 1
    end 
  end
end
