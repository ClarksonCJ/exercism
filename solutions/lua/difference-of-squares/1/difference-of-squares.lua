-- Description: Calculate the difference between the square of the sum and the sum of the squares of the first N natural numbers.
-- Calculate the square of the sum of the first N natural number
local function square_of_sum(n)
	local sum = 0
	for i = 1, n do
		-- Your code here
		sum = sum + i
	end
	return math.pow(sum, 2)
end

-- Calculate the sum of the squares of the first N natural numbers.
local function sum_of_squares(n)
	local sum = 0
	for i = 1, n do
		sum = sum + math.pow(i, 2)
	end
	return sum
end

local function difference_of_squares(n)
	return square_of_sum(n) - sum_of_squares(n)
end

return { square_of_sum = square_of_sum, sum_of_squares = sum_of_squares, difference_of_squares = difference_of_squares }
