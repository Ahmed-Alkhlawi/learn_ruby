class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
  	@seconds = 0
  end 

  def seconds
  @seconds 
  end

  def seconds=(seconds)
  	@seconds = seconds
  	time_string
  end

  def time_string
  	time = ['00', '00', '00']
  	compare = @seconds
  	
  	if compare < 10
  		puts seconds.to_s
  		puts " "
  		time[2] = '0' + seconds.to_s 
  		puts time[2]
  	end
  	#if below 1 minute
  	if compare < 60 && compare > 10
  		time[2] = seconds
  	end
  	#if below 1 hour and more than or equal one minutes
  	if compare < 3600 && compare >= 60
  		minutes = 00
  		minutes = compare / 60
  		puts minutes
  		seconds = compare % 60
  		puts seconds
	  		if seconds < 10
	  			time[2] = '0' + seconds.to_s
	  		else
	  		time[2] = seconds
	  		end
  		puts " timer seconds"
  		puts seconds
  		if minutes < 10
	  			time[1] = '0' + minutes.to_s
	  		else
	  		time[1] = minutes
	  		end
  		puts "timer minutes"
  		puts minutes
  	end

  	if compare < 86400 && compare >=3600
  		hours = compare / 3600
  		puts "third"
  		puts hours
  		if hours < 10
	  			time[0] = '0' + hours.to_s
	  		else
	  		time[0] = hours
	  		end

  		minutes = (compare / 60) % 60
  		puts minutes
  		if minutes < 10
	  			time[1] = '0' + minutes.to_s
	  		else
	  		time[1] = minutes
	  		end
  		seconds = (compare % 60) 
  		puts seconds
  		if seconds < 10
	  			time[2] = '0' + seconds.to_s
	  		else
	  		time[2] = seconds
	  		end
  	end
  	
  print time * ":"
  	return time * ":"
  end
end
