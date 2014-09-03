require_relative 'player.rb'

class PlayerList
  attr_accessor :current, :list

  # @param user_input Hash containing
  #        :players Integer number of players
  #        :money Integer starting money for each player
  def initialize(user_input)
    @list = []
    (1..user_input[:players]).each do |idx|
      @list << Player.new("Player#{idx}", user_input[:money])
    end
    @current = @list.first
  end
  
  # @return Player next alive player in list
  def next
    next_idx = (@list.index(@current)+1) % @list.count
    update_current(next_idx)
  end

  # are there at least two players alive?
  # @return Boolean false if there is only one player alive.
  def has_competing_players?
    @list.count > 1
  end
  
  def remove(player)
    @list.delete(player)
  end
  
  private 
  
  def update_current(next_idx)
    @current = @list[next_idx]
  end
  
end