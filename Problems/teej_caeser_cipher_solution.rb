def caeser_cipher_letter(letter, number)

  ascii_code = letter.bytes
  ascii_code[0] += number

  # new_letter = letter + 1
  # puts "#{ascii_code}"

  new_char = ascii_code[0].chr

  # puts new_char

  return new_char
end

caeser_cipher_letter = caeser_cipher_letter('a', 2)
caeser_cipher_letter1 = caeser_cipher_letter('s', 2)
caeser_cipher_letter2 = caeser_cipher_letter('h', 2)
puts "#{caeser_cipher_letter}"
puts "#{caeser_cipher_letter1}"
puts "#{caeser_cipher_letter2}"
puts "\n"

def caeser_cipher_string(str)
  ascii_codes = str.bytes
  puts "#{ascii_code}"

  ascii_codes.each { |letter| puts letter.chr}
end

