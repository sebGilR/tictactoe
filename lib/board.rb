class Board
  @@board = {}
  @@win_combos = []
  

  def self.create_board
    i = 1
    while i < 10
      @@board[i] = i.to_s
      i += 1
    end
  end

  def exists?(value)
    if value.is_a? Integer
      return false  unless value > 0 && value < 10
    else
      return false
    end
   true
  end

  def busy?(value)
    @@board[value] == 'X' || @@board[value] == 'O'
  end

  def game_over?
    
  end

  def update_cell(value, symb)
    @@board[value] = symb
  end

  def self.board
    @@board
  end
end