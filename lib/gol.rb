require 'facets'

class Gol

  def next(cells)
    cells
        .map {|c| neighbours_of(c)}
        .flatten(1)
        .frequency
        .select {|key, value| alive?(value, cells.include?(key))}
        .map {|key, value| key}
  end

  def alive?(n, alive = false)
    2 == n && alive || n == 3
  end

  def neighbours_of(cell)
    neighbours = []
    if cell.length > 0
      [-1, 0, 1].each do |dx|
        [-1, 0, 1].each do |dy|
          if !(dx == 0 && dy == 0)
            neighbours.push([dx + cell[0], dy + cell[1]])
          end
        end
      end
    end
    neighbours
  end
end
