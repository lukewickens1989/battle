class Player
  attr_reader :name, :hitpoints

  HITPOINTS = 100

  def initialize(name, hitpoints = HITPOINTS)
    @name = name
    @hitpoints = hitpoints
  end

  def receive_damage
    @hitpoints -= 10
  end

  def attack(player)
    player.receive_damage
  end

end
