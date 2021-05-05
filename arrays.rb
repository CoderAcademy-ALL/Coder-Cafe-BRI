# Array is a collection of items
arr = ["Teej", 5, 4.6, :orange, {name: "Teej"}, [5,6,6,7]]

# To access an element
first_element = arr[0]

# Copy of the array 
new_arr = arr.clone

# replace "Teej" with "Ash"
new_arr[0] = "Ash"
puts "#{arr}"
puts "Replace Teej with Ash: #{new_arr}"

## Negative indexing
# Starts from the right of the array. 
nested_arr = arr[-1]
puts "Nested array: #{nested_arr}"

# Get the index of an element
# Gets the position in the array of an element
symbol_index = arr.index(:orange)
puts "Index position of :orange symbol: #{symbol_index}"

## Methods
# Add to the start of an array
new_arr.unshift("Manny the dog")
puts "Add Manny the dog to start: #{new_arr}"

# Add to the end of an array
new_arr.push("Nands")
puts "Nands joins us: #{new_arr}"

# Add to the end of an array
new_arr.append("AlexH")
puts "Alex H has joined us: #{new_arr}"

# Add to middle of array without replacing anything
new_arr.insert(1, "bee", "cow")
puts "Inserting into index 1: #{new_arr}"

# Delete an item
new_arr.delete("Manny the dog")
puts "Delete Manny the dog: #{new_arr}"

# Delete an item at a particular index
new_arr.delete_at(2) 
puts "Delete what is in index 2: #{new_arr}"

# Remove element at end of array:
last_element = new_arr.pop()
puts "pop: #{new_arr}"
puts "last element: #{last_element}"

# Remove elements at end of array:
last_two_elements = new_arr.pop(2)
puts "#{new_arr}"
puts "Last two elements: #{last_two_elements}"

# Remove element from start of array
first_element = new_arr.shift()
puts "#{new_arr}"
# Add element from start of array
new_arr.unshift("Baron the cat")
puts "#{new_arr}"
puts "#{first_element}"

# Make array a string
a = [:foo, 'bar', 2] 
# puts "#{a.join}"
puts a.join(".")