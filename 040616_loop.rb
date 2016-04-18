=begin
# for loop

bottles = 99
for n in 0..99
# 0..99 shorthand for producing the array
	puts "#{bottles} bottles of beer on the wall"
	bottles -= 1
end


x = 0
while x < 10
	puts "#{x} bottles of beer on the wall."
	x += 1
end

x = 11

begin
	x += 1
	puts "#{x} still isn't 10"
end while x < 10

# diff between first line w/ while and last line w/ while
# u always want the first iteration of the code to run 
# no matter how good the code is

x = 0
until x == 10
	puts "#{x} isn'ts 10"
	x +=1
end

begin
	puts "#{x} isn't 10"
	# x += 1 if u add this line it won't stop, cuz the step by
	# step execution
end until x == 10

100.times do
	# variable following the do could be ignored
	x += 1
	puts x
end
# always run the code until the condition is true

100.times do |n|
	puts "#{100-n} bottles of beer on the wall"
	# n starts w/ 0
end

=end

my_str = "Ho!"
my_str.length.times do
	puts my_str
end

bottles_arr = (0..4).to_a
# to convert to array, is for performance requirements
# if you put range, computer just know it is a range w/o 
# even evaluating it
bottles_arr.each do 
	puts bottles_arr
end

name = ["Joe","Jane","Bob"]
# the syntax for array is []
name.each do |name|
	puts name
end

1.upto(5){|n| puts "We are at number #{n}."}
# upto will allow you to do the loop in one line
# make sure your code is readable