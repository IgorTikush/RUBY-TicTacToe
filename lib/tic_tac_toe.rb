#require "tic_tac_toe/version"
require_relative "./tic_tac_toe/player.rb"
require_relative "./tic_tac_toe/board.rb"
require_relative "./tic_tac_toe/cell.rb"
require_relative "./tic_tac_toe/core_extensions.rb"
require_relative "./tic_tac_toe/game.rb"

module TicTacToe
  
end



module TicTacToe
  class Error < StandardError; end
  # Your code goes here...
end

puts "Welcome to tic tac toe"
puts "________________________"
puts "Please insert name of player 1"
bob = TicTacToe::Player.new({color:"X", name: 'gets.chomp' })
puts "Please insert name of player 2"
frank = TicTacToe::Player.new({color: "O", name: 'gets.chomp2'})
players = [bob, frank]
TicTacToe::Game.new(players).play