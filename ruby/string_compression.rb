def string_compression(str)
  # input => "aabbcccccaaa"
  # output => "a2b2c5a3"

  result = []
  counter = 0
  index = 0

  while index < str.length do
    current_char = str[index]
    next_char = str[index + 1]

    if next_char == current_char
      counter += 1
    else
      result << current_char << counter + 1
      counter = 0
    end

    index += 1
  end

  result.join('')
end
