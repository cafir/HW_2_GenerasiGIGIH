class Person
    attr_accessor   :hitpoint
    attr_reader     :name, :attack_damage

    def initialize(name, hitpoint, attack_damage)
        @name = name
        @hitpoint = hitpoint
        @attack_damage =attack_damage
    end

     def to_s
        "#{@name} has #{@hitpoint} hitpoint and #{@attack_damage} attack damage"
     end

    def attack(other_person)
        puts "#{@name} attack #{other_person.name} with #{@attack_damage} damage"
        other_person.take_damage(@attack_damage)
    end

    def take_damage(damage)
        @hitpoint -= damage
    end

    def die?
        if @hitpoint <=0
            puts "#{@name} dies"
            true
        end
    end

    def heal(other_person)
        puts "#{@name} heals #{other_person.name}, restoring 20 hitpoint"
        other_person.take_potion(@potion)
    end

    def take_potion(potion)
        @hitpoint += potion
    end

    def info
        return "#{@name}"
    end
end
