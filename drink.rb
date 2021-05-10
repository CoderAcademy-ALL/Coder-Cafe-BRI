class Drink

  attr_accessor :name

  def initialize(name, description)
    @name = name
    @description = description
  end

  # def to_s
  #   return "A #{@name}: #{@description}"
  # end

  ## Same as attr_reader
  # def get_name 
  #   return @name
  # end

  ## Same as attr_writer
  # def set_name(name)
  #   @name = name
  # end

  ## Use attr_accessor to read and write
end

# drink = Drink.new("Latte", "milk in coffee").to_s
# puts drink

# puts "Hello".class
# puts 5.class