require_relative 'player.rb'

class PlayerList
  attr_accessor :current, :list

  # @param user_input Hash containing
  #        :players Integer number of players
  #        :money Integer starting money for each player
  #        :starting_position Land representing a player's initial position.
  def initialize(user_input, starting_position)
    @list = []
    (1..user_input[:players]).each do |idx|
      new_player = Player.new("Player#{idx}", user_input[:money])
      new_player.position = starting_position
      @list << new_player
    end
    @current = @list.last
  end

  # get next alive player in the internal :list
  # which comes directly after the player
  # which is pointed by :current.
  # @return Player next alive player in list
  def next
    update_current(list_index_of(@current))
  end

  # are there at least two players alive?
  # @return Boolean false if there is only one player alive.
  def has_competing_players?
    @list.count > 1
  end

  # removes a given player from the internal player list
  # and updates the :current pointer if this player was
  # pointed by :current at the time when being removed.
  # @param player Player to remove from internal list
  def remove(player)
    update_current(list_index_of(player)) if player==current
    @list.delete(player)
  end
  
  private 

  # get index in internal list of current player
  # @param player Player a given player
  # @return Integer index of player in internal player array
  def list_index_of(player)
    (@list.index(player)+1) % @list.count
  end

  # update :current pointer of playerlist :list
  # by the player of a given index. Note that there is no further
  # check whether the provided index is valid.
  # thus, if passing an invalid index, :current will point to nil.
  # @param next_idx Integer index of a potential Player
  #        in :list which should be referenced by :current
  # @return Player instance where :current currently points to.
  def update_current(next_idx)
    @current = @list[next_idx]
  end
  
end