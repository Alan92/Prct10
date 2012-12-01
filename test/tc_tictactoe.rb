require 'test/unit'
require 'tictactoe'

class TestTicTacToe < Test::Unit::TestCase

def test1
@game1=TicTacToe::Game.new TicTacToe::SmartPlayer, TicTacToe::SmartPlayer

["Congratulations, you win.\n\n","Tie game.\n\n"].include?@game1.play

end

def test2
score=[]
30.times do
@game2=TicTacToe::Game.new TicTacToe::DumbPlayer, TicTacToe::DumbPlayer
score.push@game2.play
end
assert_equal(score.uniq.length, 3)
end

def test3
@game3=TicTacToe::Game.new TicTacToe::SmartPlayer, TicTacToe::DumbPlayer
["Congratulations, you win.\n\n","Tie game.\n\n","You lost tic-tac-toe?!\n\n"].include?@game3.play
end

end
