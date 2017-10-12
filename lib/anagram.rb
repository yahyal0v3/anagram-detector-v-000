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
    tenacity = false
    array.each do |word|
      binding.pry
      tenacity = word.split("").all? do |letter|
        @word.include?(letter)
      end
    end
    if tenacity == true
      anagram << @word
    end
    tenacity
  end

end

detector = Anagram.new('ba')
array = ['ab', 'abc', 'bac']
detector.match(array)
