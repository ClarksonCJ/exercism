local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)
	local num_str = tostring(number)
	local num_digits = #num_str
	local sum = 0

	for digit in num_str:gmatch("%d") do
		sum = sum + tonumber(digit) ^ num_digits
	end

	return sum == number
end

return ArmstrongNumbers
