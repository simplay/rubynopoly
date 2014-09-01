class PlayerList
  attr_accessor :current
  LIST = []
  def initialize(args)
    (1..args[:count]).each do |idx| 
      LIST << Player.new("p#{idx}", args[:money]) 
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