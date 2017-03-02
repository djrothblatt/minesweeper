class Tile
  attr_reader :pos, :bombed, :flagged, :revealed, :board

  def initialize(pos, board)
    @pos = pos
    @board = board
    @bombed = rand(5).zero? ? true : false
    @flagged = false
    @revealed = false
  end

  def reveal
    @revealed = true
  end

  def neighbors
    x, y = pos
    results = []
    (-1).upto(1) do |i|
      (-1).upto(1) do |j|
        results << board[x + i][y + j] unless i.zero? && j.zero?
      end
    end
    results
  end
end

if __FILE__ == $PROGRAM_NAME
  board = Array.new(3) { Array.new(3) { [] } }

  board.each do |row|
    3.times { row << Tile.new()}
  end
end
