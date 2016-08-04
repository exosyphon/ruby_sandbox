class Wiggle
	def size(arr)
		subsequence = [arr[0]]
		wiggle_sequence = true
		failed_check = false
		el = 1
		while el < arr.count - 1 do 
			if positive?(arr[el], arr[el+1]) && !positive?(arr[el-1], arr[el])
				failed_check = false
				subsequence << arr[el]
			elsif !positive?(arr[el], arr[el+1]) && positive?(arr[el-1], arr[el])
				failed_check = false
				subsequence << arr[el]
			elsif !failed_check
				failed_check = true
				el += 1
			else
				wiggle_sequence = false
				break
			end
			el += 1
		end

		if wiggle_sequence
			if positive?(arr[el-1], arr[el]) && !positive?(arr[el-2], arr[el-1])
				subsequence << arr[el]
			elsif !positive?(arr[el-1], arr[el]) && positive?(arr[el-2], arr[el-1])
				subsequence << arr[el]
			elsif failed_check
				wiggle_sequence = false
		  end	
		end

		puts "Input #{arr.inspect}"
		puts "Output #{subsequence.count}"
		if subsequence.count == arr.count
			puts "The entire sequence is a wiggle sequence."
		elsif wiggle_sequence 
			puts "There are several subsequences that achieve this length. One is #{subsequence}."
		end
	end

	private

	def positive?(first, second)
		(first - second) > 0
	end
end

puts Wiggle.new.size([1,7,4,9,2,5])
puts "should be output 6"
puts Wiggle.new.size([1,17,5,10,13,15,10,5,16,8])
puts "should be output 7"
puts Wiggle.new.size([1,2,3,4,5,6,7,8,9])
puts "should be 2"

