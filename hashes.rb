# dictionary-like collection of key-value pairs

# Long hand way 
profile = {
    :name => "Teej",
    :age => 24,
    :hobbies => ["Muy Thai", "Rock Climbing"],
    :schedule => {
        :monday => "Monday - Rock Climbing",
        :thursday => "Thursday - Muy Thai",
        :friday => "Friday - Walk"
    }
}

#Accessing a hash
hobbies = profile[:hobbies]
puts "#{hobbies}"

#Accessing a nested hash
thursday = profile[:schedule][:thursday]
puts "#{thursday}"

# Accessing rock climbing hobby
rock_climbing = profile[:hobbies][1]
puts "#{rock_climbing}"

# Change age to 25
profile[:age] = 25
age = profile[:age]
puts "#{age}"