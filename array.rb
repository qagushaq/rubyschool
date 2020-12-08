arr=[]
def add_elements(arr)

  while true
    puts "Кого добавить в массив?"
    name = gets.chomp.strip.capitalize
    puts "Cколько ему лет?"
    age = gets.chomp.strip.to_i

    if name == "" and age == ""
       break
    end

    arr << [name,age]
  end

end

def show_elements(arr)
  arr.size.times do |i|
    puts "#{i+1} - #{arr[i]};"
  end
end

def delete_element(arr)
  while true
    show_elements(arr)
    puts "Кого удалить?"
    dlt=gets.chomp.strip.to_i
    arr.delete_at(dlt-1) #если нажать enter то 0-1 будет
    if arr.length<1 #или в вайл засунуть  arr.length>=1
      puts "Вы всех удалили :("
      break
    end
  end
end

add_elements(arr)
show_elements(arr)
delete_element(arr)
