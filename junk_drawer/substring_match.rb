class SubstringMatch
	def call(first, second)
		for index in (0..(second.length - first.length)) do
			j = 0 
			while (j < first.length && second[index + j] == first[j]) do
				j += 1
			end
			if j == first.length
				return index
			end
		end

		-1
	end
end

puts SubstringMatch.new.call('Tom', 'BobTommer')
puts SubstringMatch.new.call('JimmmmTom', 'Tom')
puts SubstringMatch.new.call('Jim', 'TJimom')
puts SubstringMatch.new.call('Ollie', 'TJimoasdfasdfOlliedfasm')
