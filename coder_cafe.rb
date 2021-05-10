prices = {small: 7.99, medium: 15, large: 45}

latte = { name: "Latte", description: "Steamed milk with a shot of espresso" }
hot_chocolate = { name: "Hot Chocolate", description: "Chocolate ^ 3" }
piccolo = { name: "Piccolo", description: "A pretentious Latte" }
green_tea = { name: "Green Tea", description: "Tea that is Green" }
black_tea = {name: "Black tea", description: "Tea that is black." }
espresso = { name: "Espresso", description: "Pure coffee extract" }

hot_drinks = [ latte, hot_chocolate, piccolo, green_tea, black_tea, espresso ]

run_loop = true

while run_loop  # checks if run loop is true and runs loops if it is 
  
  puts "What did you want to do today?"
  puts "You can:"
  puts "* See drink prices"
  puts "* Buy a drink"
  puts "* exit"

  user_input = gets.strip


  # if user_input == "else"
  #   exit loop
  # end

  case user_input

  when "See drink prices"
    puts "We have the following drinks in stock: "
    
    # for loop

    # array of hashes
    hot_drinks.each do |hot_drink|
      puts "#{hot_drink[:name]}:  #{hot_drink[:description]}"
    end
    
    # iterator
    prices.each { |size, price|  puts "#{size}: #{price}" }

  when "Buy a drink"
    puts 'What can I get you today?'

    hot_drink = gets.strip

    puts "And, what size did you want your #{hot_drink}?"

    drink_size = gets.strip

    # string interpolation
    puts "How many #{drink_size} #{hot_drink}s did you want?"
    # string concatenation
    # puts "How many "+ drink_size + " " + hot_drink + " did you want?"

    quantity = gets.strip.to_i

    # if statement
    # if drink_size == "small"
    #   price = prices[:small]
    # elsif drink_size == "medium"
    #   price = prices[:medium]
    # else
    #   price = prices[:large]
    # end

    # case statement
    case drink_size
    when "small"
    price = prices[:small]
    when "medium"
    price = prices[:medium]
    when "large"
    price = prices[:large]
    end

    hot_drink_price = price * quantity

    #output so that was 17 medium mochas? 
    puts "So, that was #{quantity} #{drink_size} #{hot_drink} for a total of #{hot_drink_price}"

    # condition ? if true runs code : if false runs code
    puts hot_drink == "Orange Pekoe" ? "You get a free coffee" : "You don't get a free coffee"


    puts ""
    puts "#{hot_drinks}"

  when "exit"
    run_loop = false
  end


end



>>>>>>> c539931729e8933b5c01b445dfa879eacd8b5f27
