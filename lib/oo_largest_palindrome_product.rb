# Implement your object-oriented solution here!

class LargestPalindromeProduct

  def answer
    i = 100
    palindrome_product = []
    while i < 1000
      j = 100
      while j < 1000
        palindrome?(i * j) ? palindrome_product << i * j : palindrome_product
        j += 1
      end
      i += 1
    end
    palindrome_product.max
  end

  def palindrome?(number)
    number.to_s == number.to_s.reverse!
  end

end

# LargestPalindromeProduct.new