class Player
  attr_reader :name
  
  def initialize(name, id)
    @name = name
    @id = id
  end

  def symb
    if @id == 1
      "X"
    elsif @id == 2
      "O"
    end
  end

  @played_cells = []

  def save_play(cell)
    @played_cells << cell
  end

  def played_cells
    @played_cells
  end
end