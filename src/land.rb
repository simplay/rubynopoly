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




end