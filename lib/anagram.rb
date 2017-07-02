class Anagram

	attr_accessor :word, :split_word

	def initialize(word)
		@word = word
		@split_word = word.split("").sort
	end

	def match(array)
		split = []
		array.each do |word|
			split << word.split("")
		end
		split.select {|word| word.sort == @split_word}.map{ |letters| letters.join}
	end

end