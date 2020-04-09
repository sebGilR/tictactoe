require_relative '../lib/board.rb'

RSpec.describe Board do
  describe '.create_board' do
    it 'creates a board hash with keys and values' do
      Board.create_board
      expect(Board.board).to be_a(Hash)
    end
  end

  describe '.board' do
    it 'the board contains keys and values from 1 to 9' do
      board = Board.board
      expect(board).to include((1..9))
    end

    it 'the board length is 9' do
      board = Board.board
      expect(board.length).to eql(9)
    end
  end
end
