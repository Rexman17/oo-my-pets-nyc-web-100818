class Cat
  # made :name it an attr_reader bc a Cat can't change its name
  attr_reader :name
  # made :mood an attr_accessor bc the spec says a Cat CAN change its mood
  attr_accessor :mood, :owner

  def initialize(name)
    @name = name
    @mood = "nervous" # initializes w a nervous mood
  end



end # end of Cat class
