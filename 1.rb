puts "Сколько лет будем копить ?"
years = gets.chomp.strip.to_i
puts "Сколько будет откладывать в месяц ?"
money = gets.chomp.strip.to_f
sum=0
1.upto(years) do |i|
  1.upto(12) do |x|
    sum += money
    puts "Год #{i} месяц #{x} отложено #{sum}"
  end
end
