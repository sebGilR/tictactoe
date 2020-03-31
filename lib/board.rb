class Board
  @@board = {}
  @@win_combos = []


  def initialize
    i = 1
    while i < 10
      @@board[i] = i.to_s
      i += 1
    end
  end

  def exists?

  end

  def busy?

  end

  def game_over?
    
  end

  def update_cell(value)
    
  end

  def draw_board

  end
end