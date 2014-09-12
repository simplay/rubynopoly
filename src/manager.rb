class Manager


  attr_accessor :history,
                :counter

  # TODO re[lace this internallz stored dialogues hash by a yaml file.]
  DIALOGUES = {
      :face_rolled => "You have rolled a",
      :press_enter => "Press enter to proceed."
  }

  def initialize
    @history = {}
    @counter = 1
    @history[@counter] = ""
  end

  def append(text)
    @history[@counter] += (text + " \n")
  end

  def flush
    @history[@counter] += (text + " \n")
    @counter += 1
    @history[@counter] = ""
  end

  def head
    @history[@counter]
  end

  # TODO left to be implemented print current turn's saved game status
  def status
    "foobar"
  end

  # @param prefix String
  #
  def print(key, prefix = '', wait = false)
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