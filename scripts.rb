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
  attr_accessor :type; :name; :description; :damage; :effect;
  def initialize(type, name, description, damage, effect)
  @type = type
  @name = name
  @description = description
  @damage = damage
  @effect = effect
  end
end

# Items & weapons
Wood_Sword = Weapon.new("Wooden Sword", 10)

Potion = Item.new(01, "potion", "Heal by 25 pts", nil, 25)

# push command
def add_item itemName
  @inventory = [] unless @inventory
  @inventory << itemName.name
  @inventory
end

#############################################################################################################################
#Battle Globals
battleOn = false;
selectedmonster = nil
selectedskill = nil
num = rand(10); defined?(num)
playerturn = 0; defined?(playerturn)
#End of battle Globals

print "Action?"
action1 = gets.chomp.downcase
if action1 == "fight" then
    battleOn = true
end
if action1 == "item" then
    print "what item?"
    usedItem = gets.chomp.lowercase
     if @inventory.include?(usedItem) then
       if usedItem.type == 01 then
       User.hp =+ usedItem.effect
        if User.hp + usedItem.effect > User.hpmax then
        User.hp = User.hpmax
    end
 end
end
else 
    puts "Item is not in inventory!"
end
    
       
end
    
#Actual Battle
if battleOn == true then 
    if User.hp <= 0 then
        puts "#{Name} died!"
    end
if 5 > num then
        selectedmonster = Slime
    else 
        selectedmonster = Bat
    end
puts "#{selectedmonster.name} appeared!"
print "Action?"
action2 = gets.chomp.downcase
end

