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

  context '#compu_chooses' do
    it 'computer chooses random option' do
      allow(subject).to receive(:compu_chooses).and_return('rock')
      expect(subject.compu_chooses).to eq('rock')
    end
  end

  context '#decide_winner' do
    it 'program compares weapons and decides who wins' do
      allow(stdin_mock).to receive(:read).and_return('rock')
      allow(subject).to receive(:compu_chooses).and_return('rock')
      expect(subject.show_winner).to eq("It's a draw")
    end
  end
end
