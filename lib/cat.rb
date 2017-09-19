class Cat
  # code goes here
  attr_accessor :mood
  attr_reader :name
  # attr_writer :mood

  def initialize(name, mood="playful")
    @name = name
    @mood = "nervous"
  end
end
