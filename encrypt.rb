ALPHABET = ('A'..'Z').to_a

def encrypt(text)
  #array of the alphabet
  #split the text into letters (use .chars)
  text.chars.map do |char|
    index = ALPHABET.index(char)
    index ? ALPHABET[index - 3] : char
  end.join
  #iterate over the letters using .map
  #get the index from the alphabet array
  #if no index, keep it as it is
  #subtract 3 from the alphabet index and get the new letter from the alphabet
  #join the array back into a string
end
