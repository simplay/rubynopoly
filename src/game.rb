require_relative 'player_list.rb'
require_relative 'board.rb'
require_relative 'dice.rb'

require 'pry'

class Game
  
  attr_reader :players,
              :dice,
              :board
  
  # @param user_input Hash containing
  #        :players Integer number of players
  #        :money Integer starting money for each player
  def initialize(user_input)
    binding.pry
    @dice = Dice.new
    @players = PlayerList.new(user_input)
    @board = Board.new
  end
  
  private 
  
  # each iteration of this loop represents a player's turn
  def run_main_loop
    while @players.has_competing_players? do
      active_player = @players.next
      steps_to_move = dice.roll
      board.update(steps_to_move, active_player)
    end
    puts "game finished - yolo swag"
  end

end