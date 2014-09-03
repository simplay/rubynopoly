require_relative 'land.rb'

class Estate < Land

  def invoke_on(player)
    if has_owner?
      player.decrease_money_by(@price)
    else
      has_bought = player.offer_to_buy(self)
      set_owner(player) if has_bought
    end
  end

  def is_ownable?
    true
  end

end