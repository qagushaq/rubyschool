def week(password,line)
  if password.include? line
      puts "Ваш пароль уязвимый"
      exit
  end
end

puts "Enter your password:"
password = gets.chomp.strip
input = File.open "passwords.txt", "r"
while (line = input.gets)
  line.strip!
  week(password,line)
end
  puts "Да вы агент 009)"
