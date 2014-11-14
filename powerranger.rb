#module 
class Person
	attr_reader :name
	attr_accessor :caffeine_level
	@name
	@caffeine_level
	def initialize(name)
		@name = name
		@caffeine_level = 0
		puts "#{@name} appears!"

	end
		

	def run
		puts "#{@name} runs away!" 

	end
	def scream 
		puts "#{@name} says AHHHH!"

	end
	def drink_coffee 
		@caffeine_level+=1
		puts "#{@name} is drinking coffee. Caffeine Level is now #{@caffeine_level}."

	end
end

class PowerRanger < Person

	@strength
	@color
	def initialize(color, strength)
		@color  = color
		@name = "#{@color} Ranger"
		@caffeine_level = 50
		@strength = strength
		puts "#{@name} appears!"

	end
	def punch (target) 
		puts "Punching #{target.name} with strength #{@strength}!"
		target.scream()
		target.run()
		target.caffeine_level-=1
		@caffeine_level-=1
	end

	def rest 
		puts "#{@name} is resting."

	end

	def use_megazord(target)
		s = @strength
		@strength = 5000
		punch (target)
		@strength =  s


	end
end

class EvilNinja < Person
	@@ninjas = 0
	@strength
	@color
	def initialize(evilness, strength)
		@strength = strength
		@caffeine_level = strength*10
		@@ninjas+=1
		@name = "Evil Ninja #{@@ninjas}"
		puts "#{@name} appears!"
	end

	def punch (target) 
		puts "#{@name} punches #{target.name} with strength #{@strength}!"
		target.scream()
		target.run()
		target
		@caffeine_level-=1
	end

	def cause_mayhem(target)
		puts "Causing mayhem @ #{target.name}."
		target.caffeine_level = 0
		@caffeine_level -= 5

	end


end

def fight_scene()

	fred = Person.new("Fred")
	john = Person.new("John")
	fred.caffeine_level = 100
	john.caffeine_level = 100

	fred.drink_coffee
	john.drink_coffee

	ninja1 = EvilNinja.new(10, 10)
	ninja2 = EvilNinja.new(10, 10)

	tommy = PowerRanger.new("Green", 20)
	chris = PowerRanger.new("Blue", 20)

	ninja1.punch(fred)

	tommy.punch(ninja1)
	chris.use_megazord(ninja2)

	ninja1.cause_mayhem(john)
	puts "John's caffeine level is now at #{john.caffeine_level}."


end
fight_scene()
