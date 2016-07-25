class BinarySearch
	def call(arr, item, low, high)
		return -1 if low >= high

		middle = (low + high)/2
		return middle if item == arr[middle]

		if arr[middle] > item
			call(arr, item, low, middle - 1) 
		else
			call(arr, item, middle + 1, high) 
		end
	end
end

puts BinarySearch.new.call([1,2,3,4], 3, 0, 4)
puts BinarySearch.new.call([1], 3, 0, 1)
puts BinarySearch.new.call([1, 2, 4, 6, 7, 9], 9, 0, 6)
puts BinarySearch.new.call([], 3, 0, 0)

