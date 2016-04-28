# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cimessageties.first)

Product.create!([
    {name: "Nintendo Entertainment System", price: 1000},
    {name: "Super Nintendo", price: 1000},
    {name: "Nintendo 64", price: 500},
    {name: "Nintendo Gamecube", price: 50},
    {name: "Nintendo Wii", price: 100},
    {name: "Nintendo WiiU", price: 4}
])

Comment.create!([
    {author: "Colin J Lacy", product_id: 6, message: "Let's not talk about it."},
    {author: "Colin J Lacy", product_id: 5, message: "That time Nintendo had a chance to win it all, and blew it."},
    {author: "Colin J Lacy", product_id: 1, message: "The original awesome breaker of digital ground."},
    {author: "Colin J Lacy", product_id: 3, message: "The often under-appreciated, way before its time, pioneer of 3D platforming."},
    {author: "Colin J Lacy", product_id: 4, message: "Not a fine time in Nintendo's history."},
    {author: "Colin J Lacy", product_id: 2, message: "The very obviously far superior younger brother of the original."},
])