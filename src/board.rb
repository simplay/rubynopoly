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

  end
  
end