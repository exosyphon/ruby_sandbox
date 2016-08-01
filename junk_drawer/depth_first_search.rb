class Node < Struct.new(:x, :y)
end

class DFS
	def initialize(map)
		@map = map
		@fill = Array.new(map.count) { Array.new(map.first.count, false) }
	end

	attr_reader :map, :fill

	def start(x, y)
		call(x, y)
		fill
	end

	def call(x, y)
		return false if ((x < 0 || x >= map.count) || (y < 0 || y >= map.first.count))
    return true if map[x][y] == 'H'
		return false if map[x][y] == 'X'
		fill[x][y] = true
		
		return true if call(x, y - 1) == true
		return true if call(x + 1, y) == true
		return true if call(x, y + 1) == true
		return true if call(x - 1, y) == true 
		fill[x][y] = false
		false
	end
end

map = [
	[nil, nil, nil, 'X', nil, nil, 'B'],
	[nil, 'X', nil, 'X', nil, 'X', 'X'],
	[nil, 'H', nil, nil, nil, nil, nil],
	[nil, nil, nil, 'X', nil, nil, nil],
	[nil, nil, nil, nil, nil, 'X', nil],
]

p DFS.new(map).start(0, 6)
