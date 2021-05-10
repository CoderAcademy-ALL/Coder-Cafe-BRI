# Given a letter, encrypt the letter by one shift.  

# A -> B
# B -> C
# and so on

# Input: one character
# Ouput: another character

# Given an input of one character, convert the character to its ASCII 
# representation

def caeser_cipher(letter)
    # Find the decimal value of the letter
    ascii_value = letter.ord
    # Increment that value by 1
    ascii_value += 1  # => ascii_value = ascii_value + 1
    return ascii_value.chr # => returns the encrypted letter
end

# A -> F
# B -> G
def caeser_cipher_with_shift(letter, shift)
    # Find the decimal value of the letter
    ascii_value = letter.ord
    # Increment that value by 1
    ascii_value += shift  # => ascii_value = ascii_value + 1
    return ascii_value.chr
end

cipher_letter =  caeser_cipher('a')  # -> 97
puts cipher_letter

cipher_letter_with_shift =  caeser_cipher_with_shift('a', 5)  # -> f
puts cipher_letter_with_shift


# world --> [119, 111, 114, 108, 100] --> [120, 112, 115, 109, 101] ==> xpsme

## Students attempt at the caeser cipher 
def caeser_cipher_word(str)
    # make empty array
    ascii_codes = []
    # iterate over each letter in word
    split_word.each do |letter|
        # put the ascii code into the array
        ascii_codes.push(letter.ord)
    end
    # ADDED BY TEEJ AFTER LESSON.  See below for 
    bytes_to_ascii = ascii_codes.map { |ascii_code| ascii_code += 1}
    characters = bytes_to_ascii.map { |ascii_code| ascii_code.chr }
end

def caeser_cipher_word_refactoring(str)
    # Return the ascii codes in array form
    bytes = str.bytes 
    # Shift the ascii code number by 1
    bytes_to_ascii = bytes.map { |ascii_code| ascii_code += 1}
    # Make the shifted ascii codes letters again
    characters = bytes_to_ascii.map { |ascii_code| ascii_code.chr }
    # Return the array as a string
    return characters.join
end

cipher1 = caeser_cipher_word_refactoring("hello")
puts cipher1


# split_word = "world".split("")
# puts "#{split_word}"

# bytes = "world".bytes


# puts "#{split_word}"
# puts "#{ascii_codes}"

# puts "#{bytes}"