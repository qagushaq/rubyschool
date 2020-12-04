#Программа Tic-Tac-Toe (крестики-нолики).
#Должна выводить на экран доску 3х3 в текстовом формате с номерами ячеек. И спрашивать:
# "Ваш ход по Х: "
=begin #дергать из хеша или массива массивов значения
WINNING_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ]

  POSITIONS = {
    "top left" => 0,
    "top middle" => 1,
    "top right" => 2,
    "middle left" => 3,
    "center" => 4,
    "middle right" => 5,
    "bottom left" => 6,
    "bottom middle" => 7,
    "bottom right" => 8
  }
=end
=begin
@hh = {}
def add  options
    puts "Такой пользователь уже существует!" if @hh[options[:name]]
  @hh[options[:name]] = options[:age]
end

def show_hash
  @hh.each do |name,age|
    puts "Имя: #{name} \tВозраст:#{age}"
  end
end

loop do
  puts "Введите имя"
  name = gets.chomp.strip.capitalize
  puts "Введите возраст"
  age = gets.chomp.strip.to_i
  if name == "" || age==""
    show_hash
    break
  end
  add options = { :name => name, :age => age}
end
=end
@hh = {}
def add options
    puts "Такой пользователь уже существует!" if @hh[options[:name]]
  @hh[options[:name]] = options[:age]
end

def show_hash
  @hh.each do |name,age|
    puts "Имя: #{name} \tВозраст:#{age}"
  end
end

loop do
  puts "Введите имя"
  name = gets.chomp.strip.capitalize
  puts "Введите возраст"
  age = gets.chomp.strip.to_i
  if name == "" || age==""
    show_hash
    break
  end
  add options = {:name => name, :age => age}
  #можно и так
  #add :name => name, :age => age
end
=begin

=end
