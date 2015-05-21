require 'pry'

class Hangman
  
  attr_reader :answer, :letter

  def initialize
    @word = File.readlines("words.txt").sample.chomp
    @guess = array.new.length(@word)
    @tries = 9
    @user_has_won = false
    @correct_guess = true
  end

  def board
    @answer.each do |letter|
      if letter == guess
        print @letter
      else
        print "_"
      end
    end
  end 

  def complete 
    won? || losts?
  end 

  def won?
    @user_has_won
  end

  def lost? 
    @tries.zero?
  end

  def check_letter guess
    @tries -= 1
    if guess == @letter 
      return :present
    elsif guess != @letter
      return :nope
    end
  end
end
binding.pry
