class Game
  def initialize
    board = Board.new
    board.populate
    @board = board
  end
end
