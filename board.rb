# create and maintain gameboard

class GameBoard
  attr_accessor :board
  def initialize
    @board = %w[1 2 3 4 5 6 7 8 9]
  end

  def display_board
    puts "#{board[0]} | #{board[1]} | #{board[2]}"
    puts seperator = '----------'
    puts "#{board[3]} | #{board[4]} | #{board[5]}"
    puts seperator
    puts "#{board[6]} | #{board[7]} | #{board[8]}"
  end

  def place_token(cell, token)
    puts 'That spot has been chosen already!' if @board[cell] != cell
  else @board[cell] = token
  end

  def check_for_win
  if @board[0] == @board[1] && @board[2]
    return true
  elsif 
  end

  def check_for_tie
  if @board[0..8] != 
  end
end
