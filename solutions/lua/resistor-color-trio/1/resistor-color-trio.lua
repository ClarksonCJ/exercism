return {
	decode = function(c1, c2, c3)
		local colors = {
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
		local result = tonumber(tostring(colors[c1]) .. tostring(colors[c2]))
		local multiplier = 10 ^ colors[c3]
		local suffix = ""
		local unit = ""

		if multiplier == 1 then
			suffix = ""
			unit = "ohms"
		end

		if multiplier == 10 then
			suffix = "0"
			unit = "ohms"
		end
		if multiplier == 100 then
			suffix = "00"
			unit = "ohms"
		end
		if multiplier == 1000 then
			suffix = ""
			unit = "kiloohms"
		end
		if multiplier == 10000 then
			suffix = "0"
			unit = "kiloohms"
		end
		if multiplier == 100000 then
			suffix = "00"
			unit = "kiloohms"
		end
		if multiplier == 1000000 then
			suffix = ""
			unit = "megaohms"
		end
		if multiplier == 10000000 then
			suffix = "0"
			unit = "megaohms"
		end
		if multiplier == 100000000 then
			suffix = "00"
			unit = "megaohms"
		end
		if multiplier == 1000000000 then
			suffix = "000"
			unit = "megaohms"
		end
		if multiplier == 1000000000 then
			suffix = ""
			unit = "gigaohms"
		end
		local returnValue = tonumber(tostring(result) .. tostring(suffix))

		if returnValue > 0 and returnValue % 1000 == 0 then
			returnValue = returnValue / 1000
			if unit == "ohms" then
				unit = "kiloohms"
			elseif unit == "kiloohms" then
				unit = "megaohms"
			elseif unit == "megaohms" then
				unit = "gigaohms"
			end
		end
		return returnValue, unit
	end,
}
