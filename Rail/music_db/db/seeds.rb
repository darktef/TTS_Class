# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.create!([
	{name:"Joe Hisaishi"},
	{name:"Ed Sheeran"},
	{name:"Colbie Caillat"},
	{name:"Maroon 5"},
	{name:"Damien Rice"}
	])	

Album.create! ([
	{artist_id: 2, title: "+", cover_image: "http://www.music-bazaar.com/album-images/vol3/267/267783/2085738-big/-cover.jpg"},
	{artist_id: 2, title: "X (Deluxe Edition)", cover_image: "http://www.music-bazaar.com/album-images/vol16/766/766307/2617318-big/X-Deluxe-Edition-cover.jpg"},
	{artist_id: 1, title: "HANA-BI", cover_image: "http://www.music-bazaar.com/album-images/vol15/725/725986/2575830-big/HANA-BI-cover.jpg"},
	{artist_id: 3, title: "Coco Summer Session", cover_image: "http://www.music-bazaar.com/album-images/vol16/761/761753/2613037-big/Coco-Summer-Sessions-cover.jpg"},
	{artist_id: 4, title: "V (Deluxe Edition", cover_image: "http://www.music-bazaar.com/album-images/vol17/790/790625/2643334-big/V-Deluxe-Version-cover.jpg"},
	{artist_id: 5, title: "O", cover_image: "http://www.music-bazaar.com/album-images/vol0/49/49062/73323-big/O-cover.jpg"},
	{artist_id: 5, title: "9", cover_image: "http://www.music-bazaar.com/album-images/vol1/67/67271/459315-big/9-cover.jpg"}
	])

Song.create! ([
	{album_id: 1, track: 1 , title: "The A Team"},
	{album_id: 2, track: 11, title: "Thinking Out Loud"},
	{album_id: 2, track: 16 , title: "I See Fire"},
	{album_id: 3, track: 1, title: "HANA-BI"},
	{album_id: 4, track: 8, title: "Bubbly"},
	{album_id: 4, track: 7, title: "Magic"},
	{album_id: 5, track: 5, title: "Sugar"},
	{album_id: 5, track: 1, title: "Maps"},
	{album_id: 6, track: 3, title: "The Blower's Daughter"},
	{album_id: 6, track: 1, title: "9 Crimes"}
	])
