local gigasecond = {}

function gigasecond.anniversary(any_date)
	local gigasecond_duration = 10 ^ 9
	local new_time = os.date("%m/%d/%y", any_date + gigasecond_duration)

	return new_time
end

return gigasecond
