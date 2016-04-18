class Person
	attr_accessor :firstname, :last_name, :gender, :age
	# accessor set up the read and write for the attribute
	# built in all class
	# What is attribute accessor in Ruby: http://stackoverflow.com/questions/4370960/what-is-attr-accessor-in-ruby
	# quickly determine bunch of attribute to the clas that could be read and write
	# so the main point is to make sure the attribute could be read as well as be written
	def initialize(first_name, last_name, gender, age)
		# to construct the class, kind default method to define is initialize
		@first_name = first_name
		@last_name = last_name
		@gender = gender
		@age = age
	end

	def introduction
		puts "#{@first_name} #{@last_name} is a #{@age} year old #{@gender}."
	end
end

# could do a read only attribute
p = Person.new "Ben", "Davis", "Male", 37
# it is basically calling the initialize method

p.introduction

# compare the usage of hash vs the attribute definition
# allow to package all the things up, bettwer way to organize the code
# highly possible you will end up in fewer lines in attribute

# object-oriented way - more human more nature...there is a dabte going on about whether it is functional

class Student < Person
	# for Object has initialize method which takes no input/argument,
	# so if you take <Person away, you will have error message
	# "wrong number of arguments (4 for 0)"
	def learning
		puts "#{@first_name} is learning!"
	end
end

s = Student.new("Jane","Doe","Female",18)

s.introduction
s.learning

# even if you do not include @, it still works inside the class