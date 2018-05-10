class Dish
  attr_accessor :name, :calories, :price

  def initialize(name, price)
    @name = name
    @price = price
  end  

  def info
    puts "#{name}, $#{price}"
  end  
end