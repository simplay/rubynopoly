require_relative 'land.rb'

class Estate < Land

  def invoke_on(player)
    if has_owner?
      player.decrease_money_by(@price) unless (@owner == self)
    else
      wants_to_buy = player.offer_to_buy(self)
      if wants_to_buy
        if(player.money >= @price)
          player.decrease_money_by(@price)
          set_owner(player)
          puts "land bought <3"
        else
          puts "your are way too poor :("
        end
      end
    end
  end

  def is_ownable?
    true
  end

end