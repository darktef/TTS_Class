def cubic_vol length, height, width
	return length * height * width
end

puts cubic_vol 2, 3, 4

info = {
	:address => "123 Anywhere Road",
	:city => "Dallas",
	:state => "TX"
}

def greeting(name,info)
	puts " Hello #{name}! You live at #{info[:address]}, #{info[:city]}, #{info[:state]}"
end

greeting("Dolla",info)
