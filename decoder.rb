# dictionary
$dictionary = {
  "A" => ".-",
  "B" => "-...",
  "C" => "-.-.",
  "D" => "-..",
  "E" => ".",
  "F" => "..-.",
  "G" => "--.",
  "H" => "....",
  "I" => "..",
  "J" => ".---",
  "K" => "-.-",
  "L" => ".-..",
  "M" => "--",
  "N" => "-.",
  "O" => "---",
  "P" => ".--.",
  "Q" => "--.-",
  "R" => ".-.",
  "S" => "...",
  "T" => "-",
  "U" => "..-",
  "V" => "...-",
  "W" => ".--",
  "X" => "-..-",
  "Y" => "-.--",
  "Z" => "--..",
  " " => " ",
}

# decode morse code character
def decode_char(character)
  $dictionary.each {
    |key, value|
    if character === value
      return key
    end
  }
end

def decode_word(code)
  _code = code.split(" ")
  _code.each { |i|
    decode_char(i)
}
end


# decode entire message
def decode(message)
  words = message.split("   ")
  decoded_msg = ""
  words.each do |word|
    letters = word.split(" ")
    letters.each do |letter|
      decoded_msg += decode_char(letter)
    end
    decoded_msg += " "
  end
  return decoded_msg.strip
end
