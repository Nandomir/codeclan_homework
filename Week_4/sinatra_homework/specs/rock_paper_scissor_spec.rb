require('minitest')
require_relative('../models/rock_paper_scissors.rb')

class TestRockPaperScissors < Minitest::Test

def setup
  @rock_paper_scissors = RockPaperScissors.new(rock, paper, scissors) 
end


end