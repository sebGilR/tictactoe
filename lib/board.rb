class Board
  @@board = {}
  @@win_combos = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [3, 5, 7]
  ]
  

  def self.create_board
    i = 1
    while i < 10
      @@board[i] = i.to_s
      i += 1
    end
  end

  def exists?(value)
    if value.is_a? Integer
      value > 0 && value < 10
    else
      false
    end
  end

  def busy?(value)
    @@board[value] == 'X' || @@board[value] == 'O'
  end

  def win?(played)
    result = false
    @@win_combos.each do |combo|
      result = (combo - played).empty?
    end
    result
  end

  def update_cell(value, symb)
    @@board[value] = symb
  end

  def self.board
    @@board
  end
end