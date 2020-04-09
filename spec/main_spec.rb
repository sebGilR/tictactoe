require './bin/main.rb'

RSpec.describe Gamels do
  let(:juego) { Gamels.new }

  context 'start the game' do
    let(:correct_name) { 'player1' }
    let(:incorrect_name) { '2' }

    describe 'get_name' do
      it 'Ask for and returns the user name' do
        n = 1
        juego_dbl = double('Gamels')
        allow(juego_dbl).to receive(:get_name).with(n).and_return('player1')
        juego_dbl.get_name(n)
      end
    end

    describe 'valid?' do
      it 'Returns true if player name is valid' do
        expect(juego.valid?(correct_name)).to eq(true)
      end

      it 'Returns false if player name not valid' do
        expect(juego.valid?(incorrect_name)).to eq(false)
      end
    end
  end

  context 'Initialize Board' do
    describe 'board_draw' do
      it 'Draws the board' do
        board_dbl = double('GameBoard')
        expect(board_dbl).to receive(:board).and_return('board')
        board_dbl.board
      end
    end
  end

  context 'game_flow' do
    describe 'get_movement' do
      it 'Ask and retrieve the current player movement' do
        player1 = instance_double('Player')
        juego_dbl = double('Gamels')
        expect(juego_dbl).to receive(:get_movement).with(player1)
        juego_dbl.get_movement(player1)
      end
    end
    describe 'save' do
      it 'saves a given movement to player score' do
        player1 = instance_double('Player')
        movement = 1
        juego_dbl = double('Gamels')
        expect(juego_dbl).to receive(:save).with(movement, player1)
        juego_dbl.save(movement, player1)
      end
    end
  end
end
