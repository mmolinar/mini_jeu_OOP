require 'bundler' # Makes all gems available 
Bundler.require

require_relative 'lib/game' # Gives acces to these files so I can call them within app.rb
require_relative 'lib/player'

puts "À ma droite #{input name of player1}"
puts "À ma gauche #{input name of player2}"
puts "Voici l'état de chaque joueur :"
puts  "#{player1.name} a #{show_state of player1} points"
puts "#{player2.name} a #{show_state of player2} points"
puts "Fight!"
player1.attacks(player2)
player2.attacks(player1) #this doesnt exist .reverse ne marche pas ?

binding.pry 
