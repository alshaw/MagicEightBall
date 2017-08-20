require 'pry'

@main_items = [

  { main: "Chicken", cost: 5.00 },
  { main: "Tacos", cost: 4.00 },
  { main: "Pizza", cost: 3.00 },
  { main: "Steak", cost: 8.00 }
  
]

@side_items = [

{ side: "Salad", cost: 1.50 },
{ side: "Fries", cost: 1.00 },
{ side: "Veggies", cost: 1.75 },
{ side: "Chips", cost: 0.50 },

]

def main_items
  puts 'Please choose your main dish.'
  @main_items.each_with_index do |key, index|
   puts "#{index + 1}. #{key[:main]} = #{key[:cost]}"
   end
 input = gets.strip.to_i
 case input
 when '1'
   @order.push(@main_items[0])
 end
end

def side_items
  puts 'Please choose from the sides'
  @side_items.each_with_index do |key, index|
    puts "#{index + 1}. #{key[:side]} = #{key[:cost]}"
    end
 input = gets.strip.to_i
 case input
 when '1'
  @order.push(@side_items[0])
 end
end

def side_one
  puts "Great Combination"
  @side_one = Side.new(@side_key, @side_value)
  puts "What would you like for the second side dish"
end

def side_two
  puts "Another good combo"
  @side_two = Side.new(@side_key, @side_value)
  puts "Now lets get you a total so you know what you owe"
end

def total
  puts "Your total is: $#{@main_cost + @side_one.cost + @side_two.cost}"
end

main_items
side_items
total
