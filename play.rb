require "./game"

game = Hangman.new

class Player
  def get_guess
    puts "Enter a letter (a-z) >"
    gets.chomp.to_a
  end
end

until game.lost?
  guess = player.get_guess 
  result = gme.check_letter guess
  puts "Your guess was: #{word}"
end

if game.won?
  puts "Congrats! You actually play hangman? lol loser"
elsif game.lost?
  
  puts "You're a plague to this society and you need to
  be purged from existence. Stop breathing"
  
  puts "The answer was #{game.answer}, how did you not guess that
  on your first try?"
end