require 'player'

describe Player do
  subject(:bob) { Player.new('Bob') }
  subject(:dave) { Player.new('Dave') }

  describe '#name' do
  it 'returns player name' do
  expect(bob.name).to eq "Bob"
end
end


# describe '#receive_damage' do
#   it 'reduces the player hit points' do
#     expect { bob.receive_damage }.to change { bob.hit_points }.by(-10)
#   end
# end
end
