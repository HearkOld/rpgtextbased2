print "Name?"
name = gets.chomp
class Player
  attr_accessor :hp; :attack; :defense; :weapon;
  def initialize(hp, attack, defense, weapon)
    @hp = hp
    @attack = attack
    @defense = defense
    @weapon = weapon
  end
end

class Enemy
  attr_accessor :name; :hp; :attack; :defense; :weapon; :golddrop;
  def initialize(name, hp, attack, defense, weapon, golddrop)
    @name = name
    @hp = hp
    @attack = attack
    @defense = defense
    @weapon = weapon
    @golddrop = golddrop
  end
end
# = Skills
skills = [];
class Skill
  attr_accessor :name; :description; :damage; :effect;
  def initialize(name, description, damage, effect)
    @name = name
    @description = description
    @damage = damage
    @effect = effect
  end
end
Punch = Skill.new("Punch", "basic attack", 10, nil)
Super_Punch = Skill.new("Super Punch", "Punch 1 enemy", 25, nil)

# Players & Enemies
User = Player.new(100, 25, 15, nil)
Slime = Enemy.new("Slime", 20, 5, 5, nil, 10)
Bat = Enemy.new("Bat", 40, 10, 10, nil, 25)
#Defining Items & weapons & inventory
pouch = 0 # where gold is stored
inventory = [];
class Weapon
  attr_accessor :name; :damage;
  def initialize(name, damage)
  @name = name
  @damage = damage
  end
end

class Item
  attr_accessor :name; :description; :damage; :effect;
  def initialize(name, description, damage, effect)
  @name = name
  @description = description
  @damage = damage
  @effect = effect
  end
end
