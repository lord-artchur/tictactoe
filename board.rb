# create and maintain gameboard

class GameBoard
  attr_accessor :board
  def initialize
    @board = %w[1 2 3 4 5 6 7 8 9]
  end
#display board in ASCII format
  def display_board
    puts "#{board[0]} | #{board[1]} | #{board[2]}"
    puts seperator = '----------'
    puts "#{board[3]} | #{board[4]} | #{board[5]}"
    puts seperator
    puts "#{board[6]} | #{board[7]} | #{board[8]}"
  end
#check if cell is empty, if so, player player token
  def place_token(cell, token)
    if @board[cell] != cell
      puts 'That spot has been chosen already!' 
    else @board[cell] = token
    end
  end
#check board for winning combinations
  def check_for_win
  if @board[0] == (@board[1] && @board[2]) || (@board[4] && (@board[8])) || (@board[3] && (@board[6]))
    return true
  elsif @board[3] == (@board[4] && @board[5])
    return true
  elsif @board[6] == (@board[7] && @board[8]) || (@board[4] && @board[2])
    return true
  elsif @board[7] == (@board[1] && @board[4])
    return true
  elsif @board[8] == (@board[5] && @board[2])
    return true
  end
#check board for tie
  def check_for_tie
    usedBlockCounter = 0
    @board.each do |x|
      if x != @board[x].index + 1
        usedBlockCounter += 1
      end
    end
    if (self.check_for_win == false) && usedBlockCounter == 9
        return true
    end
    

  end
end
