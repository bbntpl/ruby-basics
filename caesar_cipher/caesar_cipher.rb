def ordinal_num_within_range(min, max, ordinal_num)
  range = (max - min) + 1
  min + (ordinal_num - min) % range
end

def is_upcase_letter?(char)
  is_letter = char.ord >= 65 && char.ord <= 90
  char == char.upcase && is_letter
end

def is_downcase_letter?(char)
  is_letter = char.ord >= 97 && char.ord <= 122
  char == char.downcase && is_letter
end

def new_char_by_ordinal_offset(min, max, char, offset)
  new_char_ord = ordinal_num_within_range(min, max, char.ord + offset)
  new_char = new_char_ord.chr
end

def caesar_cipher(string, offset)
  arr = string.split("")

  result = arr.map do |char|
    if is_downcase_letter?(char)
      new_char_by_ordinal_offset(97, 122, char, offset)
    elsif is_upcase_letter?(char)
      new_char_by_ordinal_offset(65, 90, char, offset)
    else
      char
    end
  end
  result.join.force_encoding("UTF-8")
end