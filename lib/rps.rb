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

  def compu_chooses
    @compuchoice = ['rock', 'paper', 'scissors'].sample
    p "I picked #{@compuchoice}"
  end

  def show_winner
    if @playerchoice == 'rock' && @compuchoice == 'scissors'
      p 'You win'
    elsif @playerchoice == 'rock' && @compuchoice == 'paper'
      p 'I win'
    elsif @playerchoice == 'paper' && @compuchoice == 'rock'
      p 'You win'
    elsif @playerchoice == 'paper' && @compuchoice == 'scissors'
      p 'I win'
    elsif @playerchoice == 'scissors' && @compuchoice == 'paper'
      p 'You win'
    elsif @playerchoice == 'scissors' && @compuchoice == 'rock'
      p 'I win'
    else
      p "It's a draw"
    end
  end
end
