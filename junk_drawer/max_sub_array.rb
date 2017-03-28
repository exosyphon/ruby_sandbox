class Test
	def kadane(arr)
		max_current = max_global = arr[0]
		1.upto(arr.count - 1).each do |i|
			max_current = [arr[i], arr[i] + max_current].max
			if max_current > max_global
				max_global = max_current
  		end
  	end
		max_global
  end
end

puts "should be 1: #{Test.new.kadane([1])}"
puts "should be 3: #{Test.new.kadane([-2, 1, 2, -1])}"
puts "should be 5: #{Test.new.kadane([-2, 3, 2, -1])}"
