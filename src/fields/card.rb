require_relative 'land.rb'

class Card < Land
  def invoke_on(player)
    # get a random card action
  end

  def is_ownable?
    false
  end
end