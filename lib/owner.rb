class Owner
  # attr_reader bc it cannot be changed/re set
  attr_reader :species
  attr_accessor :name, :pets
  @@owners = []

  def initialize(species)
    @species = species
    @@owners << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@owners
  end

  def self.reset_all # clears/resets all owners
    @@owners.clear
  end

  def self.count
    @@owners.size
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish)
    fish = Fish.new(fish)
    @pets[:fishes] << fish # shovel into fish array
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    @pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    @pets[:dogs] << dog
  end

  def walk_dogs # iterate bc multiple dogs u need to make happy
    @pets[:dogs].select do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].select do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].select do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.select do |k, v|
      v.select do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
  "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
