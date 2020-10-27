# Play the actual game

require_relative 'gamemaster'
require_relative 'board'
require_relative 'player'

game = GameMaster.new
board = GameBoard.new
game.introduction
playerOne = Player.new
playerTwo = Player.new
game.first_up(playerOne, playerTwo)
game.play_turn unless board.check_for_win || board.check_for_tie
