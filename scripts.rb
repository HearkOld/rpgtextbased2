# Scripts #
print "What is your name?"
Name = gets.chomp


class Player
 def initialize(nombre, hp, attack, defense, weapon)
  @name = '#{Name}'
  @hp = @hp
  @attack = @attack
  @defense = @defemse
  @weapon = @weapon
      if Player.hp  == 0
  puts "#{Name} is dead!"
else
  puts "#{Name} is wounded but can still fight!"
end
randy = rand(100)
health = Player.hp - randy
puts "#{Name} 's hp is #{Health}"
end
Player = Player.new('#{Name}', 100, 25, 15, "Wooden Sword")
end
