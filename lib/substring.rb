def substrings(word, dictionary)
  word = word.downcase
  result = Hash.new(0)

  dictionary.each do |substring|
    matches = word.scan(substring.downcase).length
    result[substring] = matches if matches > 0
  end
  result
end

dictionary = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

  puts substrings("ruby", dictionary)

  puts substrings("hoje eu estou estudando manipulação de strings, arrays e hash em ruby com substring", dictionary)
