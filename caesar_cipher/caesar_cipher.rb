# frozen_string_literal: true

def ordinal_num_within_range(min, max, ordinal_num)
  range = (max - min) + 1
  (min + (ordinal_num - min)) % range
end

def upcase_letter?(char)
  is_letter = char.ord.between?(65, 90)
  char == char.upcase && is_letter
end

def downcase_letter?(char)
  is_letter = char.ord.between?(97, 122)
  char == char.downcase && is_letter
end

def new_char_by_ordinal_offset(min, max, ordinal_num)
  new_char_ord = ordinal_num_within_range(min, max, ordinal_num)
  new_char_ord.chr
end

def caesar_cipher(string, offset)
  result = string.chars.map do |char|
    if downcase_letter?(char)
      new_char_by_ordinal_offset(97, 122, char.ord + offset)
    elsif upcase_letter?(char)
      new_char_by_ordinal_offset(65, 90, char.ord + offset)
    else
      char
    end
  end

  result.join.force_encoding('UTF-8')
end
