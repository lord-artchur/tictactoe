# Play the actual game

require_relative 'gamemaster'
require_relative 'board'
require_relative 'player'

game = GameMaster.new
board = GameBoard.new
playerOne = Player.new
playerTwo = Player.new
game.first_up
