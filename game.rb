require "./players"
require "./questions"

puts "Time to show off that big brain of yours!"

class Game

def initialize
  @player1 = Players.new('Player 1')
  @player2 = Players.new('Player 2')
  @current_player = @player1
end 

def play
  
  while @player1.alive? && @player2.alive? do
    new_question = Question.new
    print new_question.ask_question(@current_player.name)
    print ">"
    userInput = gets.chomp
    #put input to integer to check if answer is correct
    if new_question.right_answer?(userInput.to_i)
      puts "YES! You are correct."
    else
      puts "Seriously? No!"
      @current_player.wrong_answer
    end
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
    puts "----NEW TURN----"
  end

  if @player1.dead?
    puts "Player 2 wins with a score of #{@player2.lives}/3"
  else
    puts "Player 1 wins with a score of #{@player1.lives}/3"
  end
puts "----GAME OVER----"
puts "Good bye!"
end

end