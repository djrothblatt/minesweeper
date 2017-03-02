class Board
  BOARD_SIZE = 9

  attr_reader :grid

  def initialize
    @grid = Array.new(BOARD_SIZE){ Array.new(BOARD_SIZE) }
  end

end
