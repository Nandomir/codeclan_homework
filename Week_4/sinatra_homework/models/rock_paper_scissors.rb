class RockPaperScissors

def initialize(hand1, hand2)
  @hand1 = hand1
  @hand2 = hand2
end

def game()
  case game
    when @hand1 == "rock" && @hand2 == "paper"
      puts "paper wins!"
    when @hand1 == "rock" && @hand2 == "scissors"
      puts "rock wins!"
    when @hand1 == "paper" && @hand2 == "scissors"
      puts "scissors win!"
    else 
      puts "choose rock, paper or scissors!"
    end
end

end