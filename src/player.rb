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

  def offer_to_buy(land)
    raise "not implemented yet"
  end

  def decrease_money_by(amount)
    raise "not implemented yet"
  end
  

  
end