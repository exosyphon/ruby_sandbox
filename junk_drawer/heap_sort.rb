class MinHeap
	attr_reader :elements

	def initialize
		@elements = []
	end

	def <<(element)
		elements << element
		bubble_up(elements.count - 1)
	end

	def bubble_up(index)
		parent_index = index/2

		return if parent_index < 0

		if elements[parent_index] > elements[index]
			exchange(index, parent_index)
			bubble_up(parent_index)
		end
	end

	def extract_min
		exchange(0, elements.count - 1)
		min = elements.pop
		bubble_down(0)
		min
	end

	def bubble_down(index)
		child_index = (index * 2)
    min_index = index

    (0...elements.count).each do |el_index|
			if child_index + el_index <= elements.count - 1 
				if elements[min_index] > elements[child_index + el_index]
					min_index = child_index + el_index
				end
			end
		end
		
		if min_index != index
			exchange(index, min_index)
			bubble_down(min_index)
		end
  end

	def exchange(source, target)
		elements[source], elements[target] = elements[target], elements[source]
	end
end

q = MinHeap.new
q << 2
q << 5
q << 5
q << 1
q << 66
q << -4

p q.elements
puts "the current min: #{q.extract_min}"
p q.elements
puts "the current min: #{q.extract_min}"
p q.elements
puts "the current min: #{q.extract_min}"
p q.elements
puts "the current min: #{q.extract_min}"
p q.elements
puts "the current min: #{q.extract_min}"
p q.elements
puts "the current min: #{q.extract_min}"
p q.elements
puts "the current min: #{q.extract_min}"
p q.elements
