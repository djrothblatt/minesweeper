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

  def neighbor_bomb_count
    self.neighbors.count(&:bombed)
  end

  def neighbors
    x, y = pos
    results = []
    (-1).upto(1) do |i|
      (-1).upto(1) do |j|
        tile = board[x + i][y + j]
        next if tile.nil?
        results << board[x + i][y + j] unless i.zero? && j.zero?
      end
    end
    results
  end

  def to_s
    if flagged
      "F"
    elsif revealed
      interior? ? "_" : neighbor_bomb_count
    else
      "*"
    end
  end

  def interior?
    neighbor_bomb_count.zero?
  end
end
