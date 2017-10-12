require 'pry'

# Your code goes here!

class Anagram
attr_accessor :word

  def initialize(word)
    @word = word
  end

  #def match(array)
  #  anagram = []
  #  anagram_array = []
  #  array.each do |word|
  #    anagram_array = word.split("").select do |letter|
  #      @word.include?(letter)
  #    end
  #  end
  #  anagram << anagram_array.join
  #end

  def match(array)
    anagram = []
    array.each do |word|
      if word.split("").sort == self.word.split("").sort
        anagram << word
      end
    end
    anagram
  end

end
