class Dice
  def initialize
  end
  
  # get a new random number within [0..6]
  # @return Integer in [1..6] representing a dice's face
  def roll
    Random.rand(6)+1
  end
end