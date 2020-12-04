class Airplane
	attr_reader :model # модель
	attr_reader :altitude # высота
	attr_reader :speed # скорость

	def initialize(model)
		@model = model
		@speed = 0
		@altitude = 0
	end

	def fly
		@speed = 800
		@altitude = 10000
	end

	def land
		@speed = 0
		@altitude = 0
	end

	def moving?
		@speed>0
	end

end

models = ['Airbus-320','Boing-777','IL-86']
planes = []
10.times do
	model = models[rand(0..2)]
	plane = Airplane.new(model)
		if rand(0..1) == 1
			plane.fly
		end
		planes << plane
end

planes.each do |plane|
	puts "Model: #{plane.model}, Speed: #{plane.speed}, Alt: #{plane.altitude} "
	puts "Is moving : #{plane.moving?}"
end

=begin
plane1=Airplane.new('Boing-777')
puts "Cамолет создан \t\tModel: #{plane1.model}, Speed: #{plane1.speed}, Alt: #{plane1.altitude} "
puts "Is moving : #{plane1.moving?}"
plane1.fly
puts "Cамолет летит \t\tModel: #{plane1.model}, Speed: #{plane1.speed}, Alt: #{plane1.altitude} "
puts "Is moving : #{plane1.moving?}"
plane1.land
puts "Cамолет на земле \tModel: #{plane1.model}, Speed: #{plane1.speed}, Alt: #{plane1.altitude} "
puts "Is moving : #{plane1.moving?}"
=end
