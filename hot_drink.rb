require_relative 'drink'

class HotDrink < Drink

  def initialize(name, description, has_milk)
    super(name, description)
    @has_milk = has_milk
  end
  
  # def to_s
  #   return "#{@name} that is described as #{@description}. Might have milk: #{has_milk}"
  # end

end

latte = HotDrink.new("Latte", "Milk in coffee", true)
puts latte