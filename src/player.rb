# :name player's name
# :money player's current money
class Player
  attr_accessor :name, :money, :alive
  
  # @param name String playername
  # @param money Float a player's starting money
  def initialize(name, money)
    @alive = true
    @money = money
    @name = name
  end
  
  # roll the dice and perform steps according to provided user input
  def move(steps)
    
  end
  
  def is_alive?
    @alive
  end
  

  
end