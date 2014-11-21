############################################################## DEFINING #################################################################
###################################################################################################################################
# Defining Players & Enemies
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

# Items & weapons
Wood_Sword = Weapon.new("Wooden Sword", 10)

Potion = Item.new("Potion", "Heal by 25 pts", nil, 25)

# Battle defines
selectedmonster = nil
num == rand(10)
#############################################################################################################################
if User.hp <= 0 then
    puts "Player died!"
end
unless 5 > num then
    selectedmonster = Slime
else 
    selectedmonster = Bat
end
playerturn == 1
enemyturn == 0
puts "#{selectedmonster.name} Appeared!"
if playerturn == 1 then
print "Action?"
if gets.chomp == "Punch" or "punch" then
    puts "#{name} used Punch!"
    playerturn == 0
    enemyturn == 1
end
end
    
