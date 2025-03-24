def substrings(string, dict)
  dict.reduce(Hash.new(0)) do |result, dict_word|
    matched_words = string.split(" ").filter_map do |matched_word| 
      dict_word if matched_word.downcase.include?(dict_word)
    end

    matched_words.each do |matched_word|
      result[dict_word] += 1 
    end

    result
  end
end