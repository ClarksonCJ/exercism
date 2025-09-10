local EliudsEggs = {}

function EliudsEggs.egg_count(number)
	local binary = {}
	while number > 0 do
		local rest = number % 2
		table.insert(binary, 1, rest)
		number = math.floor(number / 2)
	end

	local count = 0
	for _, bit in ipairs(binary) do
		if bit == 1 then
			count = count + 1
		end
	end
	return count
end

return EliudsEggs
