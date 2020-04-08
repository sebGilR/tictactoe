class Player
  attr_reader :name, :played_cells

  def initialize(name, id)
    @name = name
    @id = id
    @played_cells = []
  end

  def symb
    if @id == 1
      'X'
    elsif @id == 2
      'O'
    end
  end

  def save_play(cell)
    @played_cells.push(cell)
  end
end
