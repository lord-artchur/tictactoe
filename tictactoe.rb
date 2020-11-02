# Play the actual game

require_relative 'gamemaster'
require_relative 'board'
require_relative 'player'

game = GameMaster.new
board = GameBoard.new
# game.intro
playerOne = Player.new
playerTwo = Player.new
game.first_up(playerOne, playerTwo)
game.play_turn(playerOne, playerTwo, board) until board.check_for_win || board.check_for_tie
