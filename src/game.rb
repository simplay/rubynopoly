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
    @dice = Dice.new
    @board = Board.new
    @players = PlayerList.new(user_input, @board.first_field)
    start
  end
  
  private 
  
  # each iteration of this loop represents a player's turn
  def start
    binding.pry
    # TODO add a 2nd dice and also a face value check - dices same face values?
    while @players.has_competing_players? do
      active_player = @players.next
      steps_to_move = dice.roll
      board.update(steps_to_move, active_player)
      @players.remove(active_player) unless active_player.is_alive?
      # TODO update statistics
    end

    puts "Player #{@players.current} has won the game"
    puts "Game finished - yolo swag"

    # TODO show fancy statistics
  end

end