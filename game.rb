require 'pry'

class Hangman
  
  attr_reader :answer, :letter

  def initialize
    @letter = rand(a..z)
    @tries = 9
    @user_has_won = false
    @correct_guess = true
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

