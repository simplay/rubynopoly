class Game
  
  attr_reader :players,
              :dice
  
  # @param user_input Hash containing
  #        :player number of players
  #        :money starting money for each player
  def initialize(user_input)
    
  end
  
  private 
  
  # each iteration of this loop represents a player's turn
  def run_main_loop
    while still_fighting? do 
      player = @players.next
      board.update(player.move)
    end
    puts "game finished - yolo swag"
  end
  
  def still_fighting?
    (@payers.select &:alive?).count) > 1
  end
  
end