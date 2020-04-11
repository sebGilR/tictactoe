require_relative '../lib/board.rb'

RSpec.describe Board do
  let(:board) { described_class.board }
  describe '.create_board' do
    it 'creates a board hash with keys and values' do
      described_class.create_board
      expect(described_class.board).to be_a(Hash)
    end
  end

  describe '.board' do
    it 'the board contains keys and values from 1 to 9' do
      expect(board).to include((1..9))
    end

    it 'the board length is 9' do
      expect(board.length).to eql(9)
    end
  end

  describe '.exists?' do
    it 'returns true if the passed cell exists in the board' do
      cell = 1
      expect(described_class.exists?(cell)).to eql(true)
    end

    it 'returns false if the passed cell doesn\'t exist in the board' do
      cell = 10
      expect(described_class.exists?(cell)).to eql(false)
    end
  end

  describe '.busy?' do
    it 'returns true if cell is busy' do
      described_class.create_board
      described_class.update_cell(1, 'X')
      expect(described_class.busy?(1)).to eql(true)
    end

    it 'returns false if cell is not busy' do
      described_class.create_board
      expect(described_class.busy?(1)).to eql(false)
    end
  end

  describe '.valid_move?' do
    it 'retuns true if the cell passed is not busy and it exists' do
      described_class.create_board
      expect(described_class.valid_move?(1)).to eql(true)
    end

    it 'retuns false if the cell passed is busy and it exists' do
      described_class.create_board
      described_class.update_cell(1, 'X')
      expect(described_class.valid_move?(1)).to eql(false)
    end

    it 'retuns false if the cell passed does not exists' do
      described_class.create_board
      expect(described_class.valid_move?(10)).to eql(false)
    end
  end

  describe '.win?' do
    it 'returns true if there is a win match horizontally' do
      described_class.create_board
      played = [1, 2, 3]
      expect(described_class.win?(played)).to eql(true)
    end

    it 'returns false if there is not a win match horizontally' do
      described_class.create_board
      played = [1, 2, 5]
      expect(described_class.win?(played)).to eql(false)
    end

    it 'returns true if there is a win match diagonally' do
      described_class.create_board
      played = [1, 5, 9]
      expect(described_class.win?(played)).to eql(true)
    end

    it 'returns false if there is not a win match diagonally' do
      described_class.create_board
      played = [1, 5, 2]
      expect(described_class.win?(played)).to eql(false)
    end

    it 'returns true if there is a win match vertically' do
      described_class.create_board
      played = [1, 4, 7]
      expect(described_class.win?(played)).to eql(true)
    end

    it 'returns false if there is not a win match vertically' do
      described_class.create_board
      played = [1, 4, 5]
      expect(described_class.win?(played)).to eql(false)
    end
  end

  describe 'update_cell' do
    it 'update the hash value for the given key and symbol' do
      described_class.create_board
      described_class.update_cell(1, 'X')
      expect(board[1]).to eql('X')
    end
  end
end
