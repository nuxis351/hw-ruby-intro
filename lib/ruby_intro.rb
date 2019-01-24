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
    new_arr.replace(arr)
    new_arr.delete_at(new_arr.index(item))
    if new_arr.include? (n-item).abs
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
