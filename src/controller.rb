require_relative 'subscriber.rb'
class Controller
  attr_reader :game, :view
  include Subscriber


  def initialize(game, view)
    @game = game
    @view = view

    game.subscribe(self)

    game.start
  end

  def handle_notification
    @view.update_console
  end

end