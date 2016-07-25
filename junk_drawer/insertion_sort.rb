class InsertionSort
	def sort(arr)
		arr.each_with_index do |item, index|
			sub_index = index
			while sub_index > 0 && arr[sub_index] < arr[sub_index - 1] do
				swap(sub_index, sub_index - 1, arr)
				sub_index -= 1
			end
		end
	end

	private

	def swap(one, two, arr)
		temp = arr[two]
		arr[two] = arr[one] 
		arr[one] = temp 
	end
end

puts InsertionSort.new.sort([3,2,5, 2, 6, 1, 1, 1])
