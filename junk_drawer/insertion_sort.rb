class InsertionSort
	def sort(arr)
		arr.each_with_index do |item, index|
			for sub_index in (index...arr.count) do
				if arr[sub_index] < arr[index]
					temp = arr[index]
					arr[index] = arr[sub_index] 
					arr[sub_index] = temp 
				end
			end
		end
	end
end

puts InsertionSort.new.sort([3,2,5, 2, 6, 1, 1, 1])
