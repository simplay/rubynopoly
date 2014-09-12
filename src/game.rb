require_relative 'player_list.rb'
require_relative 'board.rb'
require_relative 'dice.rb'
require_relative 'manager.rb'
require_relative 'observable.rb'

require 'pry'

class Game < Observable

  attr_reader :players,
              :dice,
              :board
  
  # @param user_input Hash containing
  #        :players Integer number of players
  #        :money Integer starting money for each player
  def initialize(user_input)
    super()
    @dice = Dice.new
    @board = Board.new
    @players = PlayerList.new(user_input, @board.first_field)
    @manager = Manager.new
  end

  def status
    @manager.head
  end

  def flush_status
    @manager.flush
  end

  # TODO export all #puts statements into View
  # each iteration of this loop represents a player's turn
  def start

    binding.pry
    # TODO add a 2nd dice and also a face value check - dices same face values?
    while @players.has_competing_players? do
      active_player = @players.next

      @manager.append("#{active_player.to_s}'s turn'")
      @manager.append("Press enter to roll your dice: ")

      steps_to_move = dice.roll
      @manager.append("You have rolled a #{steps_to_move}.")

      board.update(steps_to_move, active_player)
      @players.remove(active_player) unless active_player.is_alive?
      notify_all
    end

    puts "Player #{@players.current.name} has won the game"
    puts "Game finished - yolo swag"

    # TODO show fancy statistics
  end

end