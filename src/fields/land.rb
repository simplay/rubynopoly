
# :owner Player who posses this land
class Land
  
  attr_accessor :owner
  
  # @param args Hash containing
  #        :name String name of field
  #        :property String indicates whether this field is
  #           buyable lands which can be bought
  #           card_thrwoable indicating an action field
  #           money_consumable when player lands on such a field he has to pay the corresponding parking cost
  #           prisonable do noting
  #           jackpotable win jackpot
  #           go_to_prisonable set player to is_in_prison state
  #           startable start field
  #        :price Integer price to :action_event
  def initialize(args = {})
  end

  def invoke_on(player)
    raise "not implemented yet"
  end


  def has_owner?
    @owner.nil?
  end

  def is_ownable?
    false
  end

  protected

  def set_owner(player)
    @owner = player if is_ownable?
  end

end