#write your code here
#say=string
def echo(say)
	     say
  end

def shout(say)
	      say.upcase
  end

def repeat(say, rept=2)
	("#{say} "*rept).strip
  end

def start_of_word(say, nbr)
	say[0..(nbr-1)]
  end

def first_word(say)
	say.split[0]
  end

def titleize(say)
	list = say.split
    list[0].capitalize!
    list[1..-1].each do |word| 
      word.capitalize! unless little_word?(word)
  end
  if list.length > 1
    final_list = list.inject{ |line, word| line + " #{word}"}.strip
  else
    say.capitalize
  end
end

def little_word?(string)
  ["and", "or", "of", "in", "a", "the", "over"].include?(string)
end


