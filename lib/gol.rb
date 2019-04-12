require 'facets'

# Good old game of life
class Gol
  def next(cells)
    cells
      .flat_map { |c| neighbours_of(c) }
      .frequency
      .select { |key, value| alive?(value, cells.include?(key)) }
      .map { |key, _value| key }
  end

  def alive?(number_of_neighbours, alive = false)
    number_of_neighbours == 2 && alive || number_of_neighbours == 3
  end

  def neighbours_of(cell)
    neighbours = []
    unless cell.empty?
      [-1, 0, 1].each do |dx|
        [-1, 0, 1].each do |dy|
          neighbour = [dx + cell[0], dy + cell[1]]
          neighbours.push(neighbour) unless dx.zero? && dy.zero?
        end
      end
    end
    neighbours
  end
end
