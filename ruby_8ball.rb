require 'colorize'
require 'colorized_string'
require 'pry'

@answers = [
     "Without a doubt",
     "It is decidedly so",
     "Without a doubt",
     "Yes definitely",
     "Yes",
     "Most likely",
     "My reply is no",
     "My sources say no",
     "Don't count on it",
     "My reply is no",
     "Very doubtful",
     "Outlook not so good",
     "Better not tell you now",
     "Reply hazy, try again"
    ]

def menu
  puts "Welcome to the magic eight ball!".colorize(:magenta)
  puts "Type a question, or q to quit"
  if gets.downcase.strip == 'q'
    puts "Thank you for playing!".colorize(:yellow)
    exit
end
    puts @answers.sample
    end

while 
  true
  menu
end








