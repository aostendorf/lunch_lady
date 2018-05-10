require_relative 'Dish'
require 'pry'

@pasta = Dish.new('Pasta', 4.25)
@pizza = Dish.new('Pizza', 5.25)
@burrito = Dish.new('Burrito', 3.75)
@hamburger = Dish.new('Hamburger', 6.75)

@corn = Dish.new('Corn', 2.25)
@maccheese = Dish.new('Mac & Cheese', 3.25)
@fries = Dish.new('Fries', 2.75)
@salad = Dish.new('Salad', 3.95)

main = [@pasta, @pizza, @burrito, @hamburger]
side = [@corn, @maccheese, @fries, @salad]
@lunch = [ ]
@total = [ ]

puts "Welcome to the Lunch Cafe"

def main_choice
  puts "Here are your main dish options: "
  @main = [@pasta, @pizza, @burrito, @hamburger]
  @main.each do |main|
    main.info
  end

  puts "What main dish would you like to order?"
  puts "1: Pasta  2: Pizza  3: Burrito  4: Hamburger"
  puts "Enter your selection here: "
  @main_dish = gets.strip.to_i
    case @main_dish
      when 1
        @lunch << 'Pasta'
        @total << 4.25
        puts "You have selected Pasta."
        # binding.pry
        first_side
      when 2
        @lunch << 'Pizza'
        @total << 5.25
        puts "You have selected Pizza."
        first_side
      when 3
        @lunch << 'Burrito'
        @total << 3.75
        puts "You have selected Burrito."
        first_side
      when 4
        @lunch << 'Hamburger'
        @total << 6.75
        puts "You have selected Hamburger."
        first_side
      else
        puts "I do not understand. Select again."  
      end
end

def first_side
  puts "Great you get 2 side dishes with that."
  puts "Here are your choices: "
  @side = [@corn, @maccheese, @fries, @salad]
  @side.each do |side|
    side.info
  end

  puts "What is the first side dish would you like to order?"
  puts "1: Corn  2: Mac & Cheese  3: Fries 4:  Salad"
  @first_dish = gets.strip.to_i
  case @first_dish
  when 1
    @lunch << 'Corn'
    @total << 2.25
    puts "You have selected Corn."
    # binding.pry
    second_side
  when 2
    @lunch << 'Mac & Cheese'
    @total << 3.25
    puts "You have selected Mac & Cheese."
    second_side
  when 3
    @lunch << 'Fries'
    @total << 2.75
    puts "You have selected Fries."
    second_side
  when 4
    @lunch << 'Salad'
    @total << 3.95
    puts "You have selected Salad."
    second_side
  else
    puts "I do not understand. Select again."  
  end
end

def second_side
  puts "That is a good choice! What is the second side dish you would like to order?"
  puts "1: Corn  2: Mac & Cheese  3: Fries 4:  Salad"
  @second_dish = gets.strip.to_i
  case @second_dish
  when 1
    @lunch << 'Corn'
    @total << 2.25
    puts "You have selected Corn."
    # binding.pry
    summary
  when 2
    @lunch << 'Mac & Cheese'
    @total << 3.25
    puts "You have selected Mac & Cheese."
    summary
  when 3
    @lunch << 'Fries'
    @total << 2.75
    puts "You have selected Fries."
    summary
  when 4
    @lunch << 'Salad'
    @total << 3.95
    puts "You have selected Salad."
    summary
  else
    puts "I do not understand. Select again."  
  end
end

def summary
  puts "Ok here is your order: "
  puts @lunch
  grand_total = @total.inject (0){|sum, element| sum + element}
  puts "And your total is: $#{grand_total}"

end
main_choice