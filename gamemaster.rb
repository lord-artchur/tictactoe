# run the actual game
class GameMaster
  @@game_total = 0
  attr_accessor :first_player, :second_player
  def initialize
    @first_player
    @second_player
    @@game_total += 1
  end

  def intro
    puts "Welcome to Tic Tac Toe, EXTREME EDITION!\n "
    sleep 1
    puts "Just joking, this is pretty tame.\n "
    sleep 1
    puts "Lets get this show on the road shall we?\n "
    sleep 1
  end

  def first_up(playerOne, playerTwo)
    puts "Let's see who goes first...\n "
    sleep 1
    puts "Hmm... how to do this...\n "
    sleep 1
    puts "I know, a coin toss!\n "
    sleep 2
    puts "Nevermind, we don't have the budget for that. I'll just just use \nsome magic computer stuff.\n "
    sleep 1
    puts "Calculating...\n "
    sleep 2
    @first_player = if rand * 1 >= 5
                      playerOne.name
                    else
                      playerTwo.name
                    end
    @second_player = if @first_player == playerOne.name
                       playerTwo.name
                     else playerOne.name
                     end
    puts "#{@first_player}, you're up first!\n "
  end

  # play a turn
  def play_turn(playerOne, playerTwo, board)
    puts "#{@first_player}, choose a square.\n "
    board.display_board
    cell = gets.chomp.to_i
    if @first_player == playerOne.name
      board.place_token(cell, playerOne.token)
    elsif @first_player == playerTwo.name
      board.place_token(cell, playerTwo.token)
    end
    puts "#{@second_player}, choose a square.\n "
    board.display_board
    cell = gets.chomp.to_i
    if @second_player == playerOne.name
      board.place_token(cell, playerOne.token)
    elsif @second_player == playerTwo.name
      board.place_token(cell, playerTwo.token)
    end
  end
end
