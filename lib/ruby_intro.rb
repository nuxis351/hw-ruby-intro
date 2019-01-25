# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0) {|sum, n| sum + n}
end

def max_2_sum arr
  total = 0
  if arr.count == 1
    arr.first
  else
    sum arr.max(2)
  end
end

def sum_to_n? arr, n
  return false unless arr.count > 1
  arr.each do |item|
    new_arr = []
    new_arr.replace arr
    new_arr.delete_at new_arr.index(item)
    if new_arr.include? (n-item).abs
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  return false unless s.length > 0
  !(['A','E','I','O','U'].include? s[0].upcase) && s.upcase.count("A-Z").equal?(s.length)
end

def binary_multiple_of_4? s
  if s.length.zero? or s.downcase.count("a-z") > 0
    false
  elsif s.to_i(2)
    total = s.to_i(2)
    (total % 4).zero?
  end
end

# Part 3

class BookInStock
  attr_reader :isbn, :price
  def initialize isbn, price
    self.isbn = isbn
    self.price = price
  end
  def isbn=(isbn)
    raise ArgumentError, "ISBN is empty" unless isbn.length > 0
    @isbn = isbn
  end
  def price=(price)
    raise ArgumentError, "price is less than or equal to zero" unless price > 0
    @price = price
  end
  def price_as_string
    "$%0.2f" %[@price]
  end
end
