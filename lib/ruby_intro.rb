# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  # YOUR CODE HERE
  s = 0
  i = 0
  
  while i < array.length do
      s = s + array[i]
      i = i + 1
  end
  return s
end


def max_2_sum(array)
#   # YOUR CODE HERE
  a = array.sort.reverse
    if a.length == 0
        puts 0
    elsif a.length == 1
        puts a[0]
    else 
    puts a[0]+a[1]
    end
end

def sum_to_n?(array, n)
#   # YOUR CODE HERE
  s = Array.new()
    
    for i in array do
        if s.include?(n - i) 
            return true
        else 
            s.push(i)
        end
    end
  return false
end

# # Part 2

def hello(name)
#   # YOUR CODE HERE
  return "Hello " + name
end

def starts_with_consonant?(s)
#   # YOUR CODE HERE
  c = 'bcdfghjklmnpqrstvwxyz'
    if c.include?(s[0]) 
        return true
    else
        return false
    end
end

def binary_multiple_of_4?(s)
#   # YOUR CODE HERE
  return true if s =~ /^[10]*1000*$|^0+$/
  false
end

# # Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn="", price=0)
    @isbn = isbn
    @price = price
    raise(ArgumentError)  if (@isbn.empty?) || (@price <= 0)
  end
  
  attr_accessor(:isbn, :price)
  def price_as_string
    "$"+sprintf('%.2f', @price)
  end
end

