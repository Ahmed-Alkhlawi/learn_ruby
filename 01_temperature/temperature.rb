#write your code here
def ftoc(temp)
	#	Deduct 32, then multiply by 5, then divide by 9
		temprature = temp
		temprature = (((temprature -32.0)*5)/9)

		puts temprature
		return temprature

end

def ctof(temp)
#	multiply by 9, then divide by 5, then add 32
		temprature = temp
		temprature = ((temprature * 1.8) + 32.0)

		puts temprature
		return temprature
end