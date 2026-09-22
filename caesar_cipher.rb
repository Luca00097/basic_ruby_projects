def caesar_cipher(str, shift)
  str.chars.map do |char|
    if (char.between?('a', 'z') || char.between?('A', 'Z'))
       base = char == char.upcase ? 65 : 97
       (((char.ord - base) + shift) % 26 + base).chr
    else
      char
    end
  end.join
end

puts caesar_cipher("What a string!", 5)