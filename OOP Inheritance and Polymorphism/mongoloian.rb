require_relative 'villain'

class MongolArcher < Villian
    def attack(other_person)
        puts "#{@name} shoot an arrow at #{other_person.name} with #{@attack_damage} damage"
        other_person.take_damage(@attack_damage)
    end
end

class MongolSpearman < Villian
    def attack(other_person)
        puts "#{@name} thrusts #{other_person.name} with #{@attack_damage} damage"
        other_person.take_damage(@attack_damage)
    end
end

class MongolSwordman < Villian
    def attack(other_person)
        puts "#{@name} slashes #{other_person.name} with #{@attack_damage} damage"
        other_person.take_damage(@attack_damage)
    end
end