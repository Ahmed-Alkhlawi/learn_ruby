#write your code here
def add(num1, num2)
	result = num1 + num2

end

def subtract(num1, num2)
	result = num1 - num2
end

def sum(array)
	result = 0

	array.each do |i|
		result = result + i
	end
	puts result
	return result
end


def multiply(*num)
	result = 1
	for i in 0...num.length
		result =  result * num[i]
	end
	puts result
	return result
end

def power(num1, num2)
	result = num1
	for i in 0...num2-1
		result =  result * num1
	end
	puts result
	return result
end

def factorial(num)
	result = 1
	for i in 1...num
		result = result + (result * i)
	end
	puts result
	return result
end