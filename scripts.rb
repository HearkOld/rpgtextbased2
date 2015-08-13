class Player
  attr_accessor :name; :state; :hp; :att; :defs;
  def initialize(name, state, hp, att, defs)
    @name = "Player" 
    @state = state
    @hp = hp
    @att = att
    @defs = defs
  end
  def poisoned?
    @state == "Poisoned"
  end

end
player = Player.new(@name, nil, 20, 5, 5)
print(player.name)

