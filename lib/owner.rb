class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  # attr_writer
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].map {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].map {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.map { |e| e.mood = "nervous" }
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets


    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
