# Create your own class
=begin
class Sentence 
	def num_words(string)
		return string.split("").length
	end
end

s = Sentence.new
num_words = s.num_words("The quick brown fox jumped over the lazy dog")
puts "The sentence has #{num_words} words"
# u could use num_words here, it is because the scope does not conflict

puts s
puts s.class
=end


class Sentence <  String
# use < to inheritant the all methods with String
	def num_words
		return split(" ").length
	end
end

s = Sentence.new("The quick brown fox jumped over the lazy dog")
puts "The sentence has #{s.num_words} words"
puts s.class.superclass
puts s.length