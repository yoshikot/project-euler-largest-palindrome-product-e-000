# Implement your procedural solution here!
# def largest_palindrome_product
#   palindromes = palindromes.reverse
#   integer = 999
#   n = 0
#     if palindromes[n] % integer == 0
#       palindromes[n]
#     else integer -= 1; 
#     integer -= 1
# end

# def largest_palindrome_product
#   palindromes = palindromes.reverse
#   if palindromes[n] % integer == 0
#     while integer > 99
#       palindromes[0] % integer == 0
#       integer -= 1
#   end
# end

def largest_palindrome_product
  # palindromes = palindromes.reverse
  integer = 999
  n = 0
  while palindromes.reverse[n] % integer != 0
    while palindromes.reverse[n] % integer != 0 && integer > 99
      integer -= 1    
    end
  n += 1
  end
  palindromes.reverse[n]
end

def range
  range = Array.new(999**2 - 100**2, 100**2)
  n = 0
  while n < 999**2 - 100**2
    range[n] = range[n] + n
    n += 1
  end
  range
end

def palindromes
  range.select do |number|
    number.to_s == number.to_s.reverse!
  end
end

# def product
#   integer = 999
#   palindromes.reverse.detect do |palindrome|
#     while integer > 99
#       palindrome % integer == 0
#       integer -= 1
#     end
#   end
# end

print palindromes