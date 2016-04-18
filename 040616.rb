puts "What's the temperature?"
temp = gets.to_i
puts "What day of the week is it?"
day = gets.chomp
#print "\n#{temp}\n#{day}\n\n"

=begin
weekend = false

if day == "sunday" || day =="saturday"
	weekend = true
else
	weekend = false
end
	
if weekend == false
	puts "\nGet back to work!"
elsif
	temp > 80 
	puts "\nLet's go to the lake."
elsif temp > 50 
	puts "\nLet/s go hiking!"
else
	puts "\nIt is too cold.Let's stay inside."
end
=end

# instructor's way of doing the weekend things
# more consistent with logical layout
if day == "saturday" || day == "sunday"
	# be very careful about the comparison operator!!!!!!
	# always make mistake due the misuse of comparison operator
	if
		temp > 80 
		puts "\nLet's go to the lake."
	elsif temp > 50 
		puts "\nLet/s go hiking!"
	else
		puts "\nIt is too cold.Let's stay inside."
	end
else
	puts "\nGet back to work!"
end
# chomp - remove the white space from the beginning of string
# difference between chomp and compact
# when you to conversion from string to number, it will automatic
# chomp the string for you during conversion