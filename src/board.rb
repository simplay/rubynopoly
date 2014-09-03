require_relative 'lands/estate.rb'

require 'yaml'
require 'pry'



class Board

  attr_reader :grid

  def initialize
    binding.pry
    @grid = YAML::load_file(File.join('data', 'map.yml'))

  end

  # moves a player :player fro his current position
  # about :steps number of steps and invokes the corresponding
  # action at the target board field.
  # @param steps Integer number of steps player may move
  # @param player Player currently playing player
  def update(steps, player)
    current_at_land_index = index_of(player.position)
    new_land_index = (current_at_land_index+steps) % @grid.count
    target_land = @grid[new_land_index]
    player.update_position(target_land)
  end

  private

  def index_of(land)
    @grid.index(land)
  end
  
end