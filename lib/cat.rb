class Cat
  # make this an attr reader so that a cat instance cannot change its name
  attr_reader :name
  attr_accessor :mood

  def initialize(name) # Cat class can initialize a cat instance with a name
    @name = name
    @mood = "nervous"
  end
end
