class Car

	@@total_car_count = 0
	@@cars_per_color = {}
	

	def initialize(color="silver")
		@fuel = 10
		@distance = 0
		@@total_car_count += 1
		@my_color = color
		
		if @@cars_per_color[color]
			@@cars_per_color[color] += 1
		else
			@@cars_per_color[color] ||= 1
		end
	end


	def self.total_car_count
		@@total_car_count
	end

	def self.cars_per_color
		@@cars_per_color	
	end

	def self.most_popular_color
		@@most_popular_color = ["",0]
		@@cars_per_color.each do |key,value|
			if (value > @@most_popular_color[1])
				@@most_popular_color[0] = key
				@@most_popular_color[1] = value
			end
		end
		@@most_popular_color[0]
	end

	def to_s()
		"I'm a car! I've driven #{@distance} and have #{@fuel} gallons gas left"
	end



	def drive(miles)
		if (@fuel - miles/20.0) >= 0
			@distance += miles
			@fuel -= miles/20.0
		else
			@distance += @fuel * 20.0
			@fuel = 0
			puts "You're out of gas!"
		end
	end

	def fuel_up()
		gallons_needed = 10.0 - @fuel
		puts "You must pay $#{3.5 * gallons_needed}"
		@fuel = 10.0
	end

	def color=(new_color)
		@@cars_per_color[@my_color] -= 1

		if @@cars_per_color[new_color]
			@@cars_per_color[new_color] += 1
		else
			@@cars_per_color[new_color] = 1
		end
	end

	def nitrous

		end_time = Time.now + 1
		frame = 0
		begin
			case frame%5
			when 0
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||    o  o   |"
				puts "|          ||     ||    |"
				puts "|          ||     ==    |"
				puts "|          ||    o  o   |"

				frame +=1

			when 1
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||   o  o    |"
				puts "|          ||    ||     |"
				puts "|          ||     ==    |"
				puts "|          ||    o  o   |"
				puts "|          ||           |"
				puts "|          ||           |"

				frame +=1
			when 2

				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||   o  o    |"
				puts "|          ||    ||     |"
				puts "|          ||    ==     |"
				puts "|          ||   o  o    |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"

				frame += 1
			when 3

				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||    o  o   |"
				puts "|          ||     ||    |"
				puts "|          ||    ==     |"
				puts "|          ||   o  o    |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"

				frame += 1
			when 4


				puts "|          ||           |"
				puts "|          ||    o  o   |"
				puts "|          ||     ||    |"
				puts "|          ||     ==    |"
				puts "|          ||    o  o   |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"
				puts "|          ||           |"

				frame += 1
			end
		end while Time.now < end_time

		puts "WOAH You're going way too fast!!!"
		@distance = @fuel * 20 + 10 
		@fuel = 0
		puts "Now you are out of fuel!"
	end
end


a = Car.new()#silver
b = Car.new()
c = Car.new("red")
d = Car.new("red")
e = Car.new("red")
f = Car.new("green")

puts Car.cars_per_color

puts Car.most_popular_color

e.color=("silver")

puts Car.cars_per_color
puts Car.most_popular_color

car_a = Car.new("red")
car_b = Car.new()#silver
puts car_a
puts car_b
car_a.drive(10)
puts car_a
puts car_b
car_a.drive(232)
car_b.drive(117)
puts car_a
puts car_b

car_c = Car.new()
car_d = Car.new("silver")

puts Car.total_car_count


puts "Most popular: "
puts Car.most_popular_color
best_color = Car.most_popular_color
Car.new(best_color)

car_e = Car.new("blue")
car_f = Car.new("blue")
car_g = Car.new("blue")
car_h = Car.new("blue")
car_i = Car.new("blue")


puts "Most popular: "
puts Car.most_popular_color




a.nitrous







