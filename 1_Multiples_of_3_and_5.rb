# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

require 'prime'

def multiples
  numbers = Prime.take_while {|p| p < 100 }
  multiples = Array.new
  for i in numbers
    if i%3 == 0 or i%5 == 0
      multiples.push(i)
    end
  end
  multiples.inject(0){|sum,s| sum + s }
end
