describe 'Player' do
  let(:board) { double }
  let(:player) { Player.new('Player X', 'X', board) }
  specify '#move' do
    expect(player).to respond_to(:move).with(1).arguments
  end

  specify '#cell_number' do
    expect(player).to respond_to(:cell_number).with(0).arguments
  end
end
