require_relative 'drink'

class ColdDrink < Drink

  def initialize(name, description, has_ice)
    super(name, description)
    @has_ice = has_ice
  end

  def to_s
    return "Name: #{@name}.  Description: #{@description}"
  end

end

orange_juice = ColdDrink.new("Orange Juice", "Juiced Orange", true)
puts orange_juice.to_s