class Book

	attr_reader :last_person

	def initialize
		@hh = {}
		@last_person = ''
	end

	def add options
		@last_person = options[:name]
	   puts "Такой пользователь уже существует!" if @hh[options[:name]]
	  @hh[options[:name]] = options[:age]
	end

	def show
	  @hh.each do |name,age|
	    puts "Имя: #{name} \tВозраст:#{age}"
			#@last_person = name
	  end
	end

end

b = Book.new
b.add :name => 'Walt', :age => 50
b.add :name => 'Alexey', :age => 17
b.add :name => 'Anton', :age => 19
b.show
puts "Last added person - #{b.last_person}"
