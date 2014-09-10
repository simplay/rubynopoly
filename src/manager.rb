class Manager

  # TODO re[lace this internallz stored dialogues hash by a yaml file.]
  DIALOGUES = {
      :face_rolled => "You have rolled a",
      :press_enter => "Press enter to proceed."
  }

  def initialize
  end

  # @param key Symbol DIALOGUES Hash key
  # @return String dialog associated with :key
  def dialog(key)
    DIALOGUES.fetch(key)
  end

end