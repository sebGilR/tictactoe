class Player
  attr_reader :name
  
  def initialize(name, id)
    @name = name
    @id = id
    @played_cells = []
  end

  def symb
    if @id == 1
      "X"
    elsif @id == 2
      "O"
    end
  end

  def save_play(cell)
    p @played_cells.class
    @played_cells.to_a.push(cell) 
  end

  def played_cells
    @played_cells
  end
end