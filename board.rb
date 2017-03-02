require_relative "tile"

class Board
  BOARD_SIZE = 9

  attr_reader :grid

  def initialize
    @grid = Array.new(BOARD_SIZE){ Array.new(BOARD_SIZE) }
  end

  def populate
    grid.each_with_index do |row, i|
      row.each_with_index do |col, j|
        self.grid[i][j] = Tile.new([i,j], self)
      end
    end
  end

end
