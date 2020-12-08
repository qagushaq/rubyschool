def ygadaika
  try = 10
  n = 50
  number = rand(1..n)
  1.upto(try) do |i|
    print "Я загадал число от 1 до #{n}, угадай какое. Попытка #{i}, Осталось попыток #{try+1-i}:"
    x = gets.chomp.strip.to_i
    if x == number
      puts "Ты угадал, число #{number}"
      break
    elsif x < number
      puts "Нет,больше "
    elsif x > number
      puts "Нет,меньше"
    end
  end
end
ygadaika
