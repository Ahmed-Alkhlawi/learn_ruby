#write your code here
def echo(string)

	puts  "#{string}" 
	"#{string}" 
end

def shout(string)
	puts  "#{string}".upcase
	"#{string}".upcase
end

def repeat(string, num = nil)
	result = ""

	if num != nil
		for i in 0...num
			if i == num -1 #dont print a space after last string
				result = result + "#{string}"
				puts result
			else
				result = result + "#{string} "
				puts result
			end
		end
		return result
	else
		puts "#{string} #{string}"
		return "#{string} #{string}"
	end
end


def start_of_word(word, number_of_letters) 
	result = ""

	for i in 0...number_of_letters
		result = result + word[i]
		puts result
	end
	return result
end

def first_word(string)
	result = ""
	for i in 0...string.length
		if string[i] == " "
			puts result
			return result
		else
			result = result + string[i]
		end
	end
end

def titleize(string)
	string.capitalize!  # capitalize the first word in case it is part of the no words array
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
    phrase = string.split(" ").map {|word| 
        if words_no_cap.include?(word) 
            word
        else
            word.capitalize
        end
    }.join(" ") # I replaced the "end" in "end.join(" ") with "}" because it wasn't working in Ruby 2.1.1
  puts phrase
  return phrase  # returns the phrase with all the excluded words
end

