require 'bundler' # Makes all gems available 
Bundler.require

require_relative 'lib/game' # Gives acces to these files so I can call them within app.rb
require_relative 'lib/player'

puts "Player 1 what is your name?"
plyr1name = gets.chomp
puts "Player 2 what is your name?"
plyr2name =  gets.chomp
player1 = Player.new(plyr1name) # The other possibility is player1.name if I hadn't asker for their names
player2 = Player.new(plyr2name)
puts "-------"
puts "On my right #{plyr1name}!"
puts "On my left #{plyr2name}!"
puts ""
puts "The life status of each player:"
player1.show_state
player2.show_state
puts ""
puts "This is a combat to the death. Players fight!"
puts ""
while player1.life_points > 0 && player2.life_points > 0
    if player1.life_points > 0 
      player1.attacks(player2) 
      player1.show_state
    else
      break
    end
    if player2.life_points > 0 
      player2.attacks(player1)
      player2.show_state
    else
      break
    end
end

binding.pry 
