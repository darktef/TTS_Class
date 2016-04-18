# Cubic Volume Calculator
puts "Cubic Volume Calculator"
puts "Please enter the width of the object:"
width = gets.chomp.to_i
puts "Enter the length:"
length = gets.chomp.to_i
puts "Enter the height:"
height = gets.chomp.to_i
cv = width * length * height
puts "Your cubic volume is #{cv}."


# Cubic Volume Calculator Ver 2
puts "Cubic Volume Calculator"
puts "Please enter the width of the object:"
width = gets.to_i
puts "Enter the length:"
length = gets.to_i
puts "Enter the height:"
height = gets.to_i
cv = width * height * length
puts "Your cubic volume is " + cv.to_s
# do not need to have to type in chomp for conversion.. 
# it probably will just elimiate the enter line

# you could not do a string add a number -> error message
# .to_s! method is not working
# so I guess only capitalize! or upcase! or downcase! could work
