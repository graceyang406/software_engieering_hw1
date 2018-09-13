# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  end
  return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  return arr.sort.last(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0
    return false
  end
  return arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /[bcdfghjklmnpqrstvwxyz*]/.match(s[0])
    return true
  elsif /[BCDFGHJKLMNPQRSTVWXYZ*]/.match(s[0])
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0 
    return false
  end
  for i in 0..(s.length - 1)
    if s[i] != '0' && s[i] != '1'
      return false
    end
  end
  return s[s.length - 1]  == '0' && s[s.length - 2] == '0'
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price

  def initialize isbn, price
    raise ArgumentError if isbn.length == 0
    raise ArgumentError if price <= 0.00
    self.isbn = isbn
    self.price = price
  end

  def price_as_string
    sprintf('$%.2f', self.price)
  end
end
