def substrings(string, array_of_substrings)
  string_words = string.split(" ")
  substring_count = {}
  string_words.each do |word|
    array_of_substrings.each do |substring|
      if word.include?(substring)
        if substring_count.has_key?(substring)
          substring_count[substring] += 1
        else
          substring_count[substring] = 1
        end
      end
    end
  end
  substring_count
end

dictionary = ["below","down","go","going","horn","how","howdy",
              "it","i","low","own","part","partner","sit"
]
p substrings("I think going down below is only a small part of exploring.", dictionary)
