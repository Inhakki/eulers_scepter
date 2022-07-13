# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

class FibonacciSolver

	def self.find_even_fib_sum(less_than_sum)

		current_num = 1
		prev_num = 1
		sum = 0

		fibonacci_add(prev_num, current_num, less_than_sum, sum)
	end

	def self.fibonacci_add(prev_num, current_num, less_than_sum, even_sum)
		new_curr = current_num + prev_num
		new_prev = current_num

		if new_curr % 2 == 0
			even_sum += new_curr
		end

		if (even_sum < less_than_sum) 
			fibonacci_add(new_prev, new_curr, less_than_sum, even_sum)
		else
			puts even_sum
			return even_sum
		end
	end
end

# Tests

if (FibonacciSolver.find_even_fib_sum(10) == 10)
	puts "passed"
else
	puts "failed"
end

if (FibonacciSolver.find_even_fib_sum(50) == 44)
	puts "passed"
else
	puts "failed"
end