class SelectionSort
	def sort(arr)
		arr.each_with_index do |item, index|
			min_index = index
			j = index 
			while j < arr.count do
				if arr[j] < arr[min_index]
					min_index = j
				end
				j += 1
			end
			temp = item
			arr[index] = arr[min_index]
			arr[min_index] = temp
		end
	end
end

puts SelectionSort.new.sort([3,2,1, 5, 6, 7, 1, 2, 1, 1])
