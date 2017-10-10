#write your code here
def translate(words)
	vowels = ["a", "e", "i", "o", "u"]
	consonants = [ "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	pig_latin = "ay"

	div_words = words.split(" ")
	div_words.each.collect { |text|
		if vowels.include?(text[0])
			text + pig_latin
		elsif consonants.include?(text[0])
			while consonants.include?(text[0]) || text[0] == "u" do
			conso = text[0]
			text.slice!(0)
			text += conso
			end
			text + pig_latin
		end
	}.join(" ")
end
