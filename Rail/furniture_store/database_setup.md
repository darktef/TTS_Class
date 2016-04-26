rails new furniture_store
cd furniture_store/
rails g model Product name:string price:decimal category:string
rake db:migrate
rails console
p = Product.new
p.name = "Kindle Paperwhite"
p.price = 99.99
p.category = "electronics"
p.save

p = Product.new
p.name = "Anova Culinary Bluetooth Precision Cooker"
p.price = 159
p.category = "kitchen"
p.save

p = Product.new
p.name = "Area Rug"
p.price = 16.97
p.category = "home decor"
p.save

p = Product.new
p.name = "Funko POP! Marvel:Dancing Groot Bobble Action Figure"
p.price = 7.89
p.category = "toy"
p.save

p = Product.new
p.name = "Asics Gel-Nimbus 17 Running"
p.price = 109.71
p.category = "shoes"
p.save

p = Product.new
p.name = "Amazon Echo"
p.price = 179.99
p.category = "electronics"
p.save

exit

rails g controller Inventory all_products one_product by_category




