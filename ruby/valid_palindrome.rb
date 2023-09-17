def is_palindrome(s)
  l = 0
  r = s.length - 1

  while l < r
    puts s[l].to_s
    while (l < r && !(/[a-zA-Z0-9]/).match?(s[l]))
        puts s[l]
        l+= 1
    end
    while (l < r && !(/[a-zA-Z0-9]/).match?(s[r]))
        r-= 1
    end
    return false unless s[l].downcase == s[r].downcase  
    l+= 1
    r-= 1
  end
  return true
end
