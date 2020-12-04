words = { "cat" => ["кошка","кот"],
	"dog" => ["собака","пес"],
	"frog" => ["лягушка"],
	"banana" => ["банан"],
	"girl" => ["девушка","девочка","аниме-подушка"] }
	words.each_key do |key|
		puts "Ключ: #{key}"
	end
	count=0
	words.each_value do |value|
		count += value.size
		puts "Значения: #{value}"
	end
	puts "Количество всех переводов: #{count}"
loop do
	print "Введите cлово: "
	input = gets.chomp.strip.downcase 	#words[input]
	if (words.has_key? input) == false
		puts " \"#{input}\" нет в словаре" #мб хотите добавить, сделать это
		break
	else
		break if input == ""
		puts "Количество переводов: #{words[input].size}"
		puts "Переводы:"
		puts 	words[input]
	end
end
