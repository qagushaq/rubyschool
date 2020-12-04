phonebook = {}
loop do
	print "Введите имя: "
	name = gets.chomp.strip
	print "Введите номер телефона: "
	number=gets.chomp.strip.to_i
	if (name == "" || number == "")
		puts "запись окончена"
		break
	end
	phonebook[name] = number
end
phonebook.each do |key,value|
	puts "Имя: #{key} - Телефон: #{value}"
end
