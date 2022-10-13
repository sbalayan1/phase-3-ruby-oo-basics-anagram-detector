# Your code goes here!
class Anagram
    attr_reader :word

    def initialize word
        @word = word
    end

    def match anagrams
        splitWord = word.chars
        matches = []
        anagrams.each do |w|
            splitCurrWord = w.chars
            if splitWord.sort == splitCurrWord.sort
                matches << w
            end
        end

        return matches
    end
end 


anagram = Anagram.new('gallery')
puts anagram.match(%w[gallery regally largely])