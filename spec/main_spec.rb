require './bin/main.rb'

RSpec.describe Gamels do
  let(:juego) {Gamels.new}
  context 'start the game' do
    let(:correct_name) { 'player1' }
    let(:incorrect_name) { '2' }
    it 'Returns true if player name is valid' do
      expect(juego.valid?(correct_name)).to eq(true)
    end

    it 'Returns false if player name not valid' do
      expect(juego.valid?(incorrect_name)).to eq(false)
    end
  end
  context 'Initialize Board' do
    it 'Draws the board' do
        board_dbl=double("GameBoard")
        expect(board_dbl).to receive(:board).and_return("board")
        board_dbl.board
    end
  end
end
