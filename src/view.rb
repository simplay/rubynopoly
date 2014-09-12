# TODO refactor this to a modul
# a view can be an arbitrary information representation
# e.g. graphical, console, or even transformed (functionally) information such as statistics
class View
  attr_reader :game

  def initialize(game)
    @game = game
  end

  def update_console
    puts "#{@game.status}"
  end

end