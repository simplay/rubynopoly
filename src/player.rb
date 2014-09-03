# :name player's name
# :money player's current money
class Player
  attr_accessor :name, :money, :alive, :position
  
  # @param name String playername
  # @param money Float a player's starting money
  def initialize(name, money)
    @alive = true
    @money = money
    @name = name
  end

  def update_position(land)
    @position = land
    land.invoke(self)

  end
  
  def is_alive?
    @alive
  end

  def offer_to_buy(land)
    raise "not implemented yet"
  end

  def decrease_money_by(amount)
    raise "not implemented yet"
    @money = @money - amount
    @alive = false if(@money <= 0)
  end

  
end