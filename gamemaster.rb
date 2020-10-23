# run the actual game
require_relative 'board'
require_relative 'player'

class GameMaster
  @@game_total = 0
  @@first_player
  def initialize
    @@game_total += 1
    puts "Welcome to Tic Tac Toe, EXTREME EDITION!\n "
    sleep 1
    puts "Just joking, this is pretty tame.\n "
    sleep 1
    puts "Lets get this show on the road shall we?\n "
  end

  def first_up
    puts "Okay, let's see who goes first...\n "
    sleep 1
    puts "Hmm... how to do this...\n "
    sleep 1
    puts "I know, a coin toss!\n"
    sleep 2
    puts "Nevermind, we don't have the budget for that. I'll just just use \nsome magic computer stuff."
    sleep 1
    puts "Calculating...\n "
    sleep 2
    @@first_player = if rand * 1 >= 5
                       playerOne.name
                     else
                       playerTwo.name
                     end
    puts "#{@@first_player}, you're up first!\n "
  end
end
