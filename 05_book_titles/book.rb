class Book
# write your code here
	
	def title
		@title
	end

	def title=(title)
		@title = make_title(title)
	end

	def make_title(str)
		str.capitalize!  # capitalize the first word in case it is part of the no words array
	    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but", "in", "of", "an"]
	    phrase = str.split(" ").map {|word| 
	        if words_no_cap.include?(word) 
	            word
	        else
	            word.capitalize
	        end
	    }.join(" ") # I replaced the "end" in "end.join(" ") with "}" because it wasn't working in Ruby 2.1.1
	  	return phrase  # returns the phrase with all the excluded words
	end
end
