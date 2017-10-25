# # Create a method for converting weight from pounds to kilos.

# def weight_to_kilos
# 	weight = 130
# 	kilos = weight * 0.453592
# 	puts "#{weight} pounds is #{kilos} kilograms."
# end


# weight_to_kilos


# # Create a method that takes a String argument and outputs the String in reverse. (But you can't use .reverse!)


# def string_reverse(string)

# 	length = string.length #find length of string
# 	count = length - 1 #initiate a count equal to the last index location of my string
# 	length.times do 
# 		print "#{string[count]}" #prints last letter first, and counts down throught index.
# 		count -=1
# 	end	
#  puts "\n"
# end	


# string_reverse("happy")



# Create a method that converts an Array into a Hash
# (indexes become keys)



# def array_to_hash(array)

# 	my_hash = {}
# 	array.each_with_index do |a, i|
# 		my_hash[i]= a
# 	end	
# 	return my_hash
# end	


# animal_hash ={}
# food_hash ={}
# animals = ["cat", "dog", "wolf", "horse"]

# food_array = ["pizza", "tacos", "nuggets", "hotdogs", "PBJ"]


# animal_hash = array_to_hash(animals)
# food_hash = array_to_hash(food_array)

# puts animal_hash, food_hash


# #Ask the user for their weight, and tell them their weight in kilos

# def weight_to_kilos(weight)
# 	kilos = weight * 0.453592
# 	# puts "#{weight} pounds is #{kilos} kilograms."
# 	return kilos
# end


# puts "How many pounds do you weigh?"
# user_weight = gets.chomp.to_f

# puts "#{weight_to_kilos(user_weight)} kilos is the same as #{user_weight} in pounds."


# name = "Heather"

# def print_name
# 	name = "John"
# 	puts name
# end

# puts name  #prints "Heather"

# print_name #print "John"



# In Ruby 6 / 4 == 1.
 
# But what if we want the remainder also?
# Write a program that asks for two (2) Integers, divides the first by the second and returns the result including the remainder.
 
# If either of the numbers is not an Integer, then don't accept the number and ask again.
 
# Do not accept zero (0) as a number.

#Define a method that gets a number from our user and checks to make sure it is not zero or a letter
def get_numbers(number_order,count)

	 
	if count < 3 #gives the user 3 tries to provide valid input
		puts "Give me the #{number_order} integer, not 0"
		num = gets.chomp.to_i
		
			if num == 0 #input not valid
				count +=1 #count increments 
				get_numbers(number_order, count)	#returns to beginning of method
			else	
				return num  #sends out the value of num
			end	
		else  #user has provide 3 invalid inputs
			puts "You are not following directions. Leave my program!"
			exit	#exits the whole program
	end	
end

#Defines a method for finding the remainder of two numbers
def get_remainder(num1, num2) #num1 and num2 are taken as parameters
	puts "#{num1} divided by #{num2} is #{num1/num2}, and the remainder is #{num1%num2}" #values are interpolated into a string
end

count = 0 #tracks the number of tries user has to give valid input

user_num1 = get_numbers("first", count) #sets user_num1 value from get_numbers
user_num2 = get_numbers("second", count) #set user_num2 value from get_numbers
get_remainder(user_num1, user_num2) #takes user values and finds the remainder





















