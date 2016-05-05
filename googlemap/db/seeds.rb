# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Destination.create! ([
	{name: "Sweden", photo: "http://s3.amazonaws.com/iexplore_web/images/assets/000/006/463/original/sweden.jpg?1443530953", address: "111 23 Stockholm, Sweden"},
	{name: "Austin", photo: "https://upload.wikimedia.org/wikipedia/commons/0/06/AustinSkylineLouNeffPoint-2010-03-29-b.JPG", address: "1100 Congress Ave, Austin, TX 78701"},
])