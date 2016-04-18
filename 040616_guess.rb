=begin
num = rand(20)
puts "I'm thinking of a number between 1 and 20. Your guess?"

ans = gets.to_i
while ans !=num
	if num < ans
		puts "Could u do smaller?"
	else
		puts "Could u do bigger?"
	end
	ans = gets.to_i
end
puts "You got it!"


# dry = don't repeat urself

num = rand(4)
puts "I'm thinking of a number between 1 and 4. Your guess?"

begin
	ans = gets.to_i
	puts "Try again" if ans!=num
end until ans == num
puts "You got it!"
=end

num = rand(20)
puts "I'm thinking of a number between 1 and 20. Your guess?"
begin
	ans = gets.to_i
	
	if num < ans
		puts "Could u do smaller?"
	else
		puts "Could u do bigger?"
	end
	
end while ans != num
puts "You got it!"

# instructor do
# diff = ans - num to make the if statement more complex