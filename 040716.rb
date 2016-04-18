#FizzBuzz Example

x = 1 
while x <= 100
	if x % 3 == 0 && x % 5 ==0
		puts "FizzBuzz"
	elsif x % 3 == 0
		puts "Fizz"
	elsif x % 5 == 0
		puts "Buzz"
	else
		puts x
	end
	x += 1
end

scores = [100,85,30,79]

sum = 0
scores.each do |n|
	sum += n
end



# instructor's way
counter = 0
sum = 0
while counter < scores.length
	sum = sum + scores[counter]
	counter += 1
end
puts sum

# take average
scores = [100,85,30,79]
sum = 0

scores.each do |n|
	sum += n
end

puts avg = sum/scores.length


rps = {
	"rock" => 1,
	"paper" => 2,
	"scissor" => 3
}

# u could use => or :, which Ruby just add : this
# most languages use : to do this, that is why Ruby adding it

guess = gets.chomp.downcase
guess_num = rps[guess]


my_hash = {
	:name => "Dana",
	:age => 34,
	:eye_color => "green"
}

my_hash.each do |x,y|
	puts "#{x} : #{y}"
end

