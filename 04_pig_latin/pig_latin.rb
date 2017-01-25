#write your code here

def translate(string)
	#vowels : A, E, I, O, U - a, e, i, o, u
	vowel = ['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u']
	#constants :  B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, X, Z, W,  Y.
	#check if there is multiple words

	#the quick brown fox 
		if string.match(/\s/) 
			#if string[0] is  a vowel
			if vowel.include? string[0]

				for i in 0...string.length
					if string[i] == " "
						string[i] = 'ay' + " "
						puts "first :" + string
						
						break
					end

				end
			else 
				#if first letter is a constant
				continue = true
					unless vowel.include? string[0]
						
						#if second letter is also a constant
						unless vowel.include? string[1]
							#if third letter is also a constant
								unless vowel.include? string[2]
									puts " reached 3"
									letter = string[0] + string[1] + string[2]
									string.delete! string[0]
									string.delete! string[0]
									string.delete! string[0]
									puts string
									
									word =  letter + 'ay'
									puts word
									#look for the end of the  word and replace it with letter
									for i in 0...string.length
										if string[i] == " "
											string[i-1] = string[i-1] + word
											break
										
										end
									end	
									
									puts "finished string:" + string
									continue = false
								end
							if continue == false

							else
								puts "reached 2"
									letter = string[0] + string[1]
									puts letter
									string.delete! string[0]
									string.delete! string[0]
									
									
									word =  letter + 'ay'
									puts word
									#look for the end of the  word and replace it with letter
									for i in 0...string.length
										if string[i] == " "
											string[i-1] = string[i-1] + word
											break
										
										end
									end	
									
									puts "finished string:" + string
									continue = false
							end
						end
							if continue == false
								
							else
								puts "reached 1"
								letter = string[0]
								string.delete! string[0]
									
								word =  letter + 'ay'
								puts word
								#look for the end of the  word and replace it with letter
								for i in 0...string.length
									if string[i] == " "
										string[i-1] = string[i-1] + word
										break
										
									end
								end	
								
								puts "finished string:" + string
								continue = false
							end
					end	
					#-->here			
			end

				for i in 0...string.length
					
					if string[i] == " "
						#found the space now check if next letter is vowel or not
						#if first letter after space is vowel
						if vowel.include?  string[i+1]
							for l in i+1...string.length
								if string[l] == " "
									string[l-1] = string[l-1] + 'ay'
									break
								else
									string[-1] == string[-1] + 'ay'
									puts "in loop 1:" + string
									break
								end
							end	
						else
						#if first letter after space is a constant
							
								#if first letter is a constant
										continue = true
											unless vowel.include? string[i+1]
												
												#if second letter is also a constant
												unless vowel.include? string[i+2]
													#if third letter is also a constant
														unless vowel.include? string[i+3]
															puts "third"
															letter = string[i+1] +  string[i+2] + string[i+3]
															string.delete! string[i+1]
															string.delete! string[i+1]
															string.delete! string[i+1]
															continue = false
														end
													if continue == false
																
													else
														puts " second"
														letter = string[i+1] +  string[i+2] 
														string.delete! string[i+1]
														string.delete! string[i+1]
															
														continue = false
													end

												end	
											if continue == false
															
											else
												puts " first"
												letter = string[i+1] 
												string.delete! string[i+1]
												
														
												continue = false
											end	

										end	
							puts "in loop 2 - letter:" + letter 
							continue = true
							for l in i+1...string.length
								puts l
								puts string.length
								if string[l] == " "
									puts "first here"
									
									string[l-1] = string[l-1] + letter + 'ay'
									
									break
								elsif string[l+1] == string[string.length]
									puts "second here"
									puts string

									string[l+1] = letter
									string[-1] = string[-1] + 'ay'
									puts "last 2:" + string
									break
								end
								
							end	
						end		
					end
				
			end
		#if there is only one word
		else
	
				#if first letter is a vowel
			if vowel.include?  string[0] 
				string.sub! string[-1], string[-1] + 'ay'
				#string.delete! string[0]
				puts "finished string:" + string
				return string
			else
				#if first letter is a constant
					unless vowel.include? string[0]
						#if second letter is also a constant
						unless vowel.include? string[1]
							#if third letter is also a constant
								unless vowel.include? string[2]
									puts " reached 3"
									letter = string[0] + string[1] + string[2]
									string.delete! string[0]
									string.delete! string[0]
									string.delete! string[0]
									puts string
									
									word =  letter + 'ay'
									puts word
									string.sub! string, string + word
									puts "finished string:" + string
									return string
								end
							#cherry
							puts "reached 2"
								letter = string[0] + string[1]
								
								string.delete! string[0]
								string.delete! string[0]
								
								
								word =  letter + 'ay'
								puts word
								string.sub! string, string + word
								puts "finished string:" + string
								return string
						end
						puts "reached 1"
						letter = string[0]
						string.delete! string[0]
						puts string
						
						word =  letter + 'ay'
						puts word
						string.sub! string, string + word
						puts "finished string:" + string
						return string
					end
			
			end

		end


	puts "finished string2: " + string
	return string


	#for i in 0...string.length
	#	if string[i].include?(vowel)
		
		#if it does then add "ay" at the end of the word
		#if it does not then move the first letter to the end of the word and add "ay"
#end
end
