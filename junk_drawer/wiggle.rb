class Wiggle
	def size(arr)
		return arr.count if arr.count == 0 || arr.count == 1
		subsequence = [arr[0], arr[1]]
		wiggle_sequence = true
		is_increasing = arr[1] > arr[0]
		el = 1
		while el < arr.count do 
			if is_increasing && arr[el] < arr[el - 1] 
				subsequence << arr[el]
				is_increasing = false
			elsif !is_increasing && arr[el] > arr[el - 1] 
				subsequence << arr[el]
				is_increasing = true
			end
			el += 1
		end

		puts "Input #{arr.inspect}"
		puts "Output #{subsequence.count}"
		if subsequence.count == arr.count
			puts "The entire sequence is a wiggle sequence."
		elsif subsequence.count > 2 
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
puts Wiggle.new.size([1,4,7,2,5])
puts Wiggle.new.size([1,7,4,5,5])
