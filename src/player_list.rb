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
    update_current(list_index_of(@current))
  end

  # are there at least two players alive?
  # @return Boolean false if there is only one player alive.
  def has_competing_players?
    @list.count > 1
  end
  
  def remove(player)
    update_current(list_index_of(player)) if player==current
    @list.delete(player)
  end
  
  private 

  # get index in internal list of current player
  # @param Player a given player
  # @return Integer index of player in internal player array
  def list_index_of(player)
    (@list.index(player)+1) % @list.count
  end

  def update_current(next_idx)
    @current = @list[next_idx]
  end
  
end