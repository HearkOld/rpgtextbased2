############################################################## DEFINING #################################################################
###################################################################################################################################
# Defining Players & Enemies
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
  attr_accessor :name; :hp; :attack; :defense; :weapon;
  def initialize(name, hp, attack, defense, weapon)
    @name = name
    @hp = hp
    @attack = attack
    @defense = defense
    @weapon = weapon
  end
end
# = Skills

# Players & Enemies
User = Player.new(100, 25, 15, nil)
Slime = Enemy.new("Slime", 20, 5, 5, nil)
Bat = Enemy.new("Bat", 40, 10, 10, nil)
#Defining Items & weapons
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

# Items & weapons
Wood_Sword = Weapon.new("Wooden Sword", 10)

Potion = Item.new("Potion", "Heal by 25 pts", nil, 25)
#############################################################################################################################
