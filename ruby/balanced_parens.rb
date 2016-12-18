PARENS = {
  "(" => ")",
  "[" => "]",
  "{" => "}"
}

def is_balanced?(symbols)
  stack = []

  symbols.each_char do |char|
    if PARENS.has_key?(char)
      stack << char
    else
     expected_opening_symbol = stack.pop
     return false if char != PARENS[expected_opening_symbol]
    end
  end
  stack.empty?
end

def clean_str(sym)
  result = ""
  sym.each_char do |char|
    if PARENS.has_key?(char) || PARENS.has_value?(char)
      result += char
    end
  end
  result
end

symbols = "abcd(ef)g[]hij[({})]klm(n(o()))p" # => true
symbols = "abcd(ef)g[]hij[({})]klm(n(o()p" # => false
is_balanced?(clean_str(symbols))
