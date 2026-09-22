dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dictionary)
  words = str.split.map { |word| word.gsub(/[^a-zA-Z]/, "") }
  dictionary.each_with_object({}) do |dict_word, hash|
  count = words.count { |word| word.downcase.include?(dict_word.downcase) }
  hash[dict_word] = count if count > 0
  end
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)