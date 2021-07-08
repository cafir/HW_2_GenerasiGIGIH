require_relative 'person'
require_relative 'hero'
require_relative 'mongoloian'
require_relative 'villain'
require_relative 'player'

#Heroes

jin = Player.new("Jin Sakai", 100, 50)
yuna = Hero.new("Yuna", 90, 45)
sensei_ishikawa = Hero.new("Sensei Ishikawa", 80, 60)

heroes = [jin, yuna, sensei_ishikawa]

friends = [yuna, sensei_ishikawa]


#Villian

khotun = Person.new("Khotun Khan", 500, 50)

mongol_archer = MongolArcher.new("Mongol Archer", 80, 40)
mongol_spearman = MongolSpearman.new("Mongol Spearman", 120, 60)
mongol_swordsman = MongolSwordman.new("Mongol Swordsan", 100, 50)
villains = [mongol_archer, mongol_spearman, mongol_swordsman]

#Target




#puts "======================================"

#loop do
 #   jin.attack(khotun)
  #  puts khotun
   # break if khotun.die?

    #puts "======================================"

    #khotun.attack(jin)
    #puts jin
    #break if jin.die?

    #puts "======================================"
#end

i = 1
until (jin.die? || villains.empty?) do
    puts "=============== Turn #{i} ================="
    puts "\n"

    puts jin
    friends.each do |hero|
        puts hero
    end
    puts "\n"
    villains.each do |villain|
        puts villain
    end
    puts "\n"

    jin.player_turn
    order = gets.chomp.to_i
    
    if order == 1
        puts "Which enemy you want to attack"
        index = 1
        villains.each do |villain|
            puts "#{index}) #{villain.info}"
            index += 1
        end
        order_attack = gets.chomp.to_i
        selected_enemy = villains[order_attack-1]
        jin.attack(selected_enemy)
        villains.each do |villain|
            villains.delete(villain) if villain.die? || villain.flee?
        end
    elsif order == 2
        puts "Which ally you want to heal"
        index = 1
        friends.each do |hero|
            puts "#{index}) #{hero.info}"
            index +=1
        end
        order_heal = gets.chomp.to_i
        selected_ally = friends[order_heal-1]
        jin.heal(selected_ally)
    end

    puts "\n"
    
    friends.each do |hero|
        break if villains.empty?
        hero.attack(villains[rand(villains.size)])
        villains.each do |villain|
            villains.delete(villain) if villain.die? || villain.flee?
        end
    end

    
    puts "\n"

    villains.each do |villain|
        break if heroes.empty?
        villain.attack(heroes[rand(heroes.size)])
        friends.each do |hero|
            friends.delete(hero) if hero.die? 
        end
    end
    puts "\n"

    i += 1
    
end
    

    
