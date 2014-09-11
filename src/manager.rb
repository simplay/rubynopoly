class Manager

  # TODO re[lace this internallz stored dialogues hash by a yaml file.]
  DIALOGUES = {
      :face_rolled => "You have rolled a",
      :press_enter => "Press enter to proceed."
  }

  def initialize
  end

  # TODO left to be implemented print current turn's saved game status
  def status
    "foobar"
  end

  # @param prefix String
  #
  def print(prefix = "", key, wait = false)
    base = wait ? accept_dialogue(key) : dialogue(key)
    prefix + base
  end


  private

  # @param key Symbol DIALOGUES Hash key
  # @return String dialog associated with :key
  def dialog(key)
    DIALOGUES.fetch(key)
  end

  # retrieve dialogue from hash according to given :key and then
  # wait for user until he has pressed the 'enter' button.
  # @param key Symbol DIALOGUES Hash key
  # @return String dialog associated with :key
  def accept_dialogue(key)
    dialog(key)
    gets
  end

end