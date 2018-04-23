require 'rps'
describe Rps do
  subject { Rps.new(stdin_mock)}
  let(:stdin_mock) { double() }

  context '#start_game' do
  it "it asks the user to select a weapon" do
    expect(subject.start_game).to eq('Rock, paper or scissors? ')
  end
end

  context '#player_chooses' do
    it 'takes input from the user' do
      allow(stdin_mock).to receive(:read).and_return 'rock'
      expect(subject.player_chooses).to eq('rock')
    end
  end
end
