# TODO refactor this to a modul
# a view can be an arbitrary information representation
# e.g. graphical, console, or even transformed (functionally) information such as statistics
class View
  attr_reader :game

  def initialize(game)
    @game = game
  end

  # TODO make this way more meaningfully...
  def update_console
    # replace this asap by Manager's strings
    puts "#{@game.status} this is the fancy console output"
  end

end