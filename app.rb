require 'colorize' 
require 'tty-prompt'
prompt = TTY::Prompt.new

puts "Welcome to PizzaWorld!".colorize(:blue)
puts "Where pizza lovers come to play".colorize(:red)

prompt.yes?("Have you been here before?") 
  if gets.chomp == "no" 
    puts "Lets get ready for some pizza"
    else puts "YAY welcome back"
end 

system "clear"
puts 
puts "|_  )"
puts " / / "
puts "/___|"
sleep(1)



binding.pry 



  
