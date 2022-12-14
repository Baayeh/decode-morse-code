# decode morse code character
def decode_char(character)
  # dictionary
  dictionary = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.',
    'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...',
    'T' => '-', 'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-', 'Y' => '-.--', 'Z' => '--..'
  }

  dictionary.each do |key, value|
    return key if character == value
  end
end

def decode_word(word)
  split_word = word.split
  split_word.each do |i|
    decode_char(i)
  end
end

# decode entire message
def decode(message)
  words = message.split('   ')
  decoded_msg = ''
  words.each do |word|
    letters = word.split
    letters.each do |letter|
      decoded_msg += decode_char(letter)
    end
    decoded_msg += ' '
  end
  decoded_msg.strip
end
