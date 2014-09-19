--Andrew Armstrong 2014 Lua 99 Bottles of Beer

local bottles = 99
local verse = 	{
			phrase_one = ' bottles of beer on the wall',
			phrase_two = ' bottles of beer.',
			phrase_three = 'Take one down and pass it around, ',
			phrase_four = 'Go to the store and buy some more',
		}

function printVerse(index)
	print(index .. verse.phrase_one .. ', ' .. index .. verse.phrase_two)
	if type(index) ~= 'number' then
		print(verse.phrase_four .. ', ' .. bottles .. verse.phrase_one .. '.\r\n')
	else
		print(verse.phrase_three .. index .. verse.phrase_one .. '.\r\n')
	end
end

for i=bottles,1, -1 do
	printVerse(i)
end

printVerse('No more')
