money=100
def rsc_bot
[:камень,:ножницы,:бумагу][rand(0..2)]
end

def game4(money)
	if money <= 0
		puts "Вы банкрот:(\nСпасибо за игру:)"
		exit
		else
		arr = [:камень,:ножницы,:бумагу]
		while true
			puts "1-камень, 2-ножницы,3-бумага"
			cmd = gets.chomp.strip.to_i
			 #после введения цифры, отдельно вынести всю прогу в метод, чтобы он вызывался if cmd>3 введи нормально else запустить всю прогу еще раз
			user=arr[cmd-1]
			bot = rsc_bot
			puts "Вы выбрали #{user}"
			puts "Бот выбрал #{bot}"
			if user == bot
				puts "Draw. Ваш баланс:#{money}" #добавить стоимость игры для всех модулей
			elsif user == :камень && bot == :ножницы
				money += 1
				puts "You win! Ножницы сломались об камень! Ваш баланс:#{money}"
			elsif user == :камень && bot == :бумагу
				money -= 1
				puts "You lose. Бумага накрыла камень. Ваш баланс:#{money}"
			elsif user == :ножницы && bot == :камень
				money -= 1
				puts "You lose. Ножницы сломались об камень. Ваш баланс:#{money}"
			elsif user ==:ножницы && bot == :бумагу
				money += 1
				puts "You win!Ножницы разрезали бумагу! Ваш баланс:#{money}"
			elsif user ==:бумагу  && rsc_bot == :камень
				money += 1
				puts "You win! Бумага накрыла камень! Ваш баланс:#{money}"
			elsif user == :бумагу && rsc_bot == :ножницы
				money -= 1
				puts "You lose. Ножницы разрезали бумагу. Ваш баланс:#{money}"
			end
		end
	end
end
game4(money)

=begin
=end
