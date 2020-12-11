class Player
  attr_reader :name, :hitpoints

  HITPOINTS = 100

  def initialize(name, hitpoints = HITPOINTS)
    @name = name
    @hitpoints = hitpoints
  end

end
