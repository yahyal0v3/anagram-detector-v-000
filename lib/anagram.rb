# Your code goes here!
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
    binding.pry
    anagram = []
    tenacity = nil
    array.each do |word|
      tenacity = word.split("").all? do |letter|
        @word.include?(letter)
        if tenacity == true
          anagram << @word
        end
      end
    end
    anagram
  end

end
