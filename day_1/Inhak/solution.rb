# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.


class DivisorFinder 

  def self.find_sum_of_multiples(num)
    
    sum = 0
    (1...num).each do |i|
      if i % 3 == 0 || i % 5 == 0
        sum += i
      end
    end
    
    sum
  end
end

# tests

if (DivisorFinder.find_sum_of_multiples(10) == 23)
  puts 'passed'
else
  puts 'failed'
end

if (DivisorFinder.find_sum_of_multiples(1000) == 233168)
  puts 'passed'
else
  puts 'failed'
end
