--Andrew Armstrong 2014 Lua 99 Bottles of Beer

local bottles = 99
local verse = 	{
			phrase_one = ' bottles of beer on the wall',
			phrase_two = ' bottles of beer.',
			phrase_three = 'Take one down and pass it around, ',
			phrase_four = 'Go to the store and buy some more',
		}

function printVerse(index)
	local output = index .. verse.phrase_one .. ', ' .. index .. verse.phrase_two  .. '\r\n'
	if type(index) ~= 'number' then
		output = output .. verse.phrase_four .. ', ' .. bottles .. verse.phrase_one
	else
		local remaining = index - 1
		output = output .. verse.phrase_three .. remaining .. verse.phrase_one
		if remaining == 0 then 
			output = string.gsub(output, "0", "No more")
			output = string.gsub(output, "bottles", "bottle", 2)
		end
	end
	print(output  .. '.\r\n')
end

for i=bottles,1, -1 do
	printVerse(i)
end

printVerse('No more')
