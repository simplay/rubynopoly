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
    land.invoke_on(self)
  end

  # @return Boolean is player alive
  #         i.e. does posses any property or has :money >= 0
  def is_alive?
    @alive
  end

  # offer this user to buy a :land land
  # @return land Estate, RailStation or Factory Land descendant.
  # @return Boolean true in case this user wants to buy this land
  def offer_to_buy(land)
    decision = nil
    while(!["y","n"].include?(decision)) do
      puts "would you like to buy this land for #{land.price}.- [y/n]?"
      decision = gets.chomp
    end
    decision.eql?("y")
  end

  def increase_money_by(amount)
    @money = @money + amount
  end

  def decrease_money_by(amount)
    @money = @money - amount
    @alive = false if(@money < 0)
  end

  
end