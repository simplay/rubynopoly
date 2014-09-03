require_relative 'player_list.rb'
require 'pry'

class Game
  
  attr_reader :players,
              :dice
  
  # @param user_input Hash containing
  #        :players Integer number of players
  #        :money Integer starting money for each player
  def initialize(user_input)
    binding.pry
    @players = PlayerList.new(user_input)
  end
  
  private 
  
  # each iteration of this loop represents a player's turn
  def run_main_loop
    while @players.has_competing_players? do
      current_player = @players.next

    end
    puts "game finished - yolo swag"
  end
  
  def still_fighting?
    (@payers.select &:alive?).count > 1
  end
  
end