def create_letter_hashes(message)
  hash = Hash.new(0)
  message.each_char { |char| hash[char.downcase] += 1 }
  hash
end

def create_word_hashes(message)
  hash = Hash.new(0)
  message.split(' ').each { |word| hash[word.downcase] += 1 }
  hash
end

def ransom(message, newspaper)
  letters_available = create_letter_hashes(newspaper)
  letters_needed = create_letter_hashes(message.gsub(/\s+/, ""))

  letters_needed.each do |key, val|
    return false if !letters_available.has_key?(key) || letters_available[key] < val
  end
  true
end

def ransom_words(message, newspaper)
  remaining_words = []
  words_available = create_word_hashes(newspaper)
  words_needed = message.downcase.split(' ')

  words_needed.each do |word|
    if words_available.has_key?(word) && words_available[word] > 0
      words_available[word] -= 1
    else
      remaining_words << word
    end
  end

  newspaper_words_remaining = ""
  words_available.each {|k, v| newspaper_words_remaining += k if v > 0 }
  ransom(remaining_words.join(""), newspaper_words_remaining)
end

np = " of lots money your want i mo ney sss"
msg = "i want your money lots of money"
message = "Pay me a hundred dollars or we will erase your code"

ransom_words(msg, np)
