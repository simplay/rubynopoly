# an observable maintains a list of its subscribers
#   :subscribers Array of Objects which include the Subscriber module
class Observable

  attr_accessor :subscribers

  def initialize
    @subscribers = []
  end

  # an :item has to offer an instance method #handle_notification
  # @param item any Object which includes the Subscriber module
  def subscribe(item)
    @subscribers << item unless @subscribers.include?(item)
  end

  # indicate has new date which means subscribers should get notified
  def notify_all
    @subscribers.each &:handle_notification
  end

end