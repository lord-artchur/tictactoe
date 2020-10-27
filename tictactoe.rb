# Play the actual game

require_relative 'gamemaster'
require_relative 'board'
require_relative 'player'

game = GameMaster.new
puts GameMaster.game_total
board = GameBoard.new
game.introduction
playerOne = Player.new
playerTwo = Player.new
game.first_up(playerOne, playerTwo)
