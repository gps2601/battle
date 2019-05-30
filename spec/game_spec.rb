require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1, receive_damage: true }
  let(:player_2) { double :player_2, receive_damage: true}

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack
    end
  end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#current_turn' do
    it 'returns the player whos turn it currently when game has started' do

      expect(game.current_turn).to eq(player_1)
    end
  end

  describe '#switch_turn' do
    it 'returns the player whos turn it currently when game has started' do
      expect(game.current_turn).to eq(player_1)
    end

    it 'returns the player whos turn it currently when game has played' do
      game.switch_turn

      expect(game.current_turn).to eq(player_2)
    end

    it 'returns the player whos turn it currently when game has played again' do
      game.switch_turn
      game.switch_turn


      expect(game.current_turn).to eq(player_1)
    end
  end
end
