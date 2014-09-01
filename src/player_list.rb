require_relative 'player.rb'

class PlayerList
  attr_accessor :current
  LIST = []

  # @param user_input Hash containing
  #        :players Integer number of players
  #        :money Integer starting money for each player
  def initialize(user_input)
    (1..user_input[:players]).each do |idx|
      LIST << Player.new("Player#{idx}", user_input[:money])
    end
    @current = LIST.first
  end
  
  # @return Player next alive player in list
  def next
    next_idx = nil
    LIST.each do |player|
      next_idx = LIST.index(player)+1 if player.eql?(@current)
    end
    update_current(next_idx)
  end
  
  def remove(player)
    LIST.delete(player)
  end
  
  private 
  
  def update_current(next_idx)
    @current = LIST[next_idx]
  end
  
end