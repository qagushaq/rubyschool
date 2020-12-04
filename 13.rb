def show_book book
	book.each do |name,age|
    puts " <p><b>Имя: #{name} </b> <i>\tВозраст: #{age}</i></p>"
  end
puts "=============================="
end

book1 = {'Mike' => 65, 'Artur' => 77, 'Alex' => 85, 'White' => 50}
book2 = {'Walt' => 51,  'Max' => 23, 'Arc' => 59, 'Mike' => 43}
	#можно сделать цикл и к 1 буду дописывать бук2, потом к получившемуся бук3 и тд
puts "<p><b>Книга 1:</b></p>"
show_book book1
puts "<p><b>Книга 2:</b></p>"
show_book book2
puts  "<p><b>Все содержимое 1:</b></p>"
show_book book1.merge! book2






=begin
=end
