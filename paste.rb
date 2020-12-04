points = 10
while true
	x = y = z = 0
	puts "====="
	100.times do
		x = rand(1..9)
		y = rand(1..9)
		z = rand(1..9)
		print "|#{x}#{y}#{z}|\r"
		sleep 0.01
	end
	print "|#{x}#{y}#{z}|\n"
	puts "====="

	puts "\nНажми Enter чтобы продолжить, если нет, то введи любой символ и нажми Enter"
	gets
end
puts "Твой счёт: #{points}. До свидания!"
exit
