return {
	value = function(colors)
		local color_codes = {
			black = 0,
			brown = 1,
			red = 2,
			orange = 3,
			yellow = 4,
			green = 5,
			blue = 6,
			violet = 7,
			grey = 8,
			white = 9,
		}

		local first_color = colors[1]
		local second_color = colors[2]

		if not color_codes[first_color] or not color_codes[second_color] then
			error("Invalid color provided")
		end

		return tonumber(tostring(color_codes[first_color]) .. tostring(color_codes[second_color]))
	end,
}
