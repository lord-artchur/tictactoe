# create player and maintain score

class Player
  @@player_total = 0
  attr_reader :token, :name
  attr_accessor :score
  def initialize
    @@player_total += 1
    puts "Player #{@@player_total}, What is your name?"
    @name = gets.chomp
    @token = if @@player_total == 1
               'X'
             else 'O'
             end
    @score = 0
    sleep 1
    puts "Okay #{@name}, you will be #{@token}'s today.'"
    sleep 1
  end

  def increase_score
    @score += 1
  end
end
