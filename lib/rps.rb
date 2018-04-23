class Rps

  def initialize(std_in = $stdin)
    @std_in = std_in
  end

  def start_game
    return 'Rock, paper or scissors? '
  end

  def player_chooses
    @playerchoice = @std_in.read
  end
end
