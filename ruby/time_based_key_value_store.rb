# https://leetcode.com/problems/time-based-key-value-store/submissions/

class TimeMap
  def initialize()
    @map = {}
  end

  attr_accessor :map

=begin
  :type key: String
  :type value: String
  :type timestamp: Integer
  :rtype: Void
=end
  def set(key, value, timestamp)
    map[key] = [] unless map.key?(key)

    map[key] << { v: value, t: timestamp }
  end


=begin
  :type key: String
  :type timestamp: Integer
  :rtype: String
=end
  def get(key, timestamp)
    return "" unless map.key?(key)

    entries = map[key]
    return "" if timestamp < entries.first[:t] 
    return entries.last[:v] if timestamp >= entries.last[:t]

    l = 0
    r =  entries.length - 1
    max = entries.first

    while l <= r
      
      mid = (l + r) / 2
      curr = entries[mid]

      if curr[:t] <= timestamp
        max = curr
        l = mid + 1
      else
        r = mid - 1
      end
    end

    max[:v]
  end
end

# Your TimeMap object will be instantiated and called as such:
# obj = TimeMap.new()
# obj.set(key, value, timestamp)
# param_2 = obj.get(key, timestamp)
