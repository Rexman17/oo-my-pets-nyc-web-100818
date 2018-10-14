require 'pry'
class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []
  # @@owner_count = 0

  # INSTANCE METHODS
  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    # @name = name
    @@all << self
    # @@owner_count += 1
  end

  def say_species
    "I am a #{@species}." # alteratively, you can do self.species inside the #{}
  end

  def buy_fish(species)
    new_fish = Fish.new(species) # instance of the fish class
    new_fish.owner = self
    @pets[:fishes] << new_fish
  end

  def buy_cat(species)
    new_cat = Cat.new(species) # instance of the cat class
    new_cat.owner = self
    @pets[:cats] << new_cat
  end

  def buy_dog(species)
    new_dog = Dog.new(species) # Dog instance
    new_dog.owner = self
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each do |doggie_instance|
      doggie_instance.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat_instance|
      cat_instance.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish_instance|
      fish_instance.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |pet_key, pets_array|
      pets_array.each do |pet_instance|
        pet_instance.mood = "nervous"
      end
    end
    @pets.clear # sell da pets :(
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  # CLASS METHODS
  def self.all
    @@all
  end

  def self.count
    # @@owner_count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end


end # end of Owner class
