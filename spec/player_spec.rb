require 'player'

describe Player do
  it 'can return its name' do
    my_player = Player.new('test_player')

    expect(my_player.name).to eq('test_player')
  end

  it 'can return hit points' do
    my_player = Player.new('test_player')

    expect(my_player.points).to eq(100)
  end

  it 'can hit the player and redue points' do
    my_player = Player.new('test_player')

    expect { my_player.receive_damage }.to change { my_player.points }.by(-10)
  end
end
