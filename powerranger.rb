class Person
	attr_reader :name
	attr_accessor :caffeine_level
	@name
	@caffeine_level
	def initialize(name)
		@name = name
		@caffeine_level = 0


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
	def init(color, strength)
		@color  = color
		@name = "#{@color} Ranger"

	end
	def punch (target) 
		puts "Punching #{target.name} with strength #{@strength}!"
		target.scream()
		target.run()
		target
		@caffeine_level-=1
	end

	def rest 
		puts "#{@name} is resting."

	end

	def use_megazord(target)
		s = @strength
		@strength == 5000
		punch (target)
		@strength =  s


	end
end

class EvilNinja < Person
	@@ninjas = 0
	@strength
	@color
	def init(evilness, strength)
		@strength = strength
		@@ninjas+=1
		@name = "Evil Ninja #{@@ninjas}"

	end

	def punch (target) 
		puts "Punching #{target.name} with strength #{@strength}!"
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

puts "TEST"