class String
  define_method(:anagram_test?) do |test1|
    original_word = self.downcase().split("").sort()
    compared_word = test1.downcase().split("").sort()

    original_word.eql?(compared_word)
  end



  define_method(:anagram_display) do |user_compared_word|
    user_input_word = self
    output_string = []
    sorted_word = user_compared_word.split(" ")

    sorted_word.each() do |word|
      if user_input_word.anagram_test?(word) == true
        output_string.push(word)
      end
    end
    if output_string.empty?()
      "Sorry Charlie"
    else
      output_string.join(" ")+" is an anagram of "+self
    end
  end
end
