# create and maintain gameboard

class GameBoard
  attr_accessor :board
  def initialize
    @board = %w[1 2 3 4 5 6 7 8 9]
    @available_spaces = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  # display board in ASCII format
  def display_board
    puts "#{board[0]} | #{board[1]} | #{board[2]}"
    puts seperator = '----------'
    puts "#{board[3]} | #{board[4]} | #{board[5]}"
    puts seperator
    puts "#{board[6]} | #{board[7]} | #{board[8]}"
  end

  # check if cell is empty, if so, player player token
  def place_token(cell, token)
    if @available_spaces.include?(cell)
      @available_spaces.delete(cell)
      @board[cell - 1] = token
    else
      puts 'That spot has already been taken! You lose a turn!'
    end

    # if (@board[cell].to_i - 1) != cell
    #  puts 'That spot has been chosen already!'
    # elsif cell == 9
    #  @board[cell - 1] = token
    # else @board[cell - 1] = token
    # end
  end

  # check board for winning combinations
  def check_for_win
    if @board[0] == @board[1] && @board[0] == @board[2] || @board[0] == @board[4] && @board[0] == @board[8] || @board[0] == @board[3] && @board[0] == @board[6]
      true
    elsif @board[3] == @board[4] && @board[3] == @board[5]
      true
    elsif @board[6] == @board[7] && @board[6] == @board[8] || @board[6] == @board[4] && @board[6] == @board[2]
      true
    elsif @board[7] == @board[1] && @board[7] == @board[4]
      true
    elsif @board[8] == @board[5] && @board[8] == @board[2]
      true
    end
    false
  end

  # check board tie
  def check_for_tie
    if @available_spaces.empty?
      true
    else false
    end
  end
end
