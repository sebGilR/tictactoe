require_relative '../lib/player.rb'

RSpec.describe Player do
  let(:player1) { Player.new('Ray', 1) }
  let(:player2) { Player.new('Bob', 2) }

  it 'creates a new player instance' do
    expect(player1).to be_a(Player)
  end

  describe 'symb' do
    it 'assigns X as symbol if id is 1' do
      expect(player1.symb).to eql('X')
    end

    it 'assigns O as symbol if id is 2' do
      expect(player2.symb).to eql('O')
    end
  end

  describe '.save_play' do
    it 'saves a played cell in an array' do
      player1.save_play(1)
      player1.save_play(8)
      expect(player1.played_cells).to include(1, 8)
    end
  end
end
