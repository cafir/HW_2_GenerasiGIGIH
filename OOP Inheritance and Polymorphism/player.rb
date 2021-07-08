require_relative 'hero'

class Player < Hero

    def initialize (name, hitpoint, attack_damage)
        super(name, hitpoint, attack_damage)
        @potion = 20
    end

    def player_turn
        puts "As #{@name}, what do you want to do this turn?"
        puts "1) Attack an enemy"
        puts "2) Heal an ally"
    end
end