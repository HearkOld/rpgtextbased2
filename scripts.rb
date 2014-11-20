class Grunty < Enemy
 def initialize(hp,attack, defense, weapon)
    super(hp, attack, defense)
    @weapon = "AK47"
    @hp =100
    if Grunto.hp  == 0
  puts "Grunty is dead!"
else
  puts "Grunty is wounded but can still fight!"
end
randy = rand(100)
health = Grunto.hp - randy
puts "Grunty's hp is #{Health}"
end
