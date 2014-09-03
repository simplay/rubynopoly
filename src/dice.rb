# A Dice rolls randomly faces having values withing the integer range {1,2,3,4,5,6}.
# Its rolled face value is in order to determine the next target field position
# on the game board of a currently playing player.
class Dice

  def initialize
  end
  
  # get a new random number within the range [0..6]
  # @return Integer in [1..6] representing a dice's face
  def roll
    Random.rand(6)+1
  end
end