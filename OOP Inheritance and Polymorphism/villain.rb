require_relative 'person'

class Villian < Person
    def initialize(name, hitpoint, attack_damage)
        super(name, hitpoint, attack_damage)
        @run_rate = 0.5
        @run = false
    end

    def flee
        @run = true
        puts "#{@name} has fled the battlefield with #{@hitpoint} hitpoint left"
    end

    def flee?
        @run
    end

    def take_damage(damage)
        @hitpoint -= damage
        if @hitpoint <= 50
            flee if rand < @run_rate
        end 
    end

    
end

