# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cat_1=Category.create(name: 'Balls')
cat_2=Category.create(name: 'Rackets')
cat_3=Category.create(name: 'Tennis Shoes')
cat_4=Category.create(name: 'T-Shirts')
cat_5=Category.create(name: 'Dumbbells')
Product.create(name:'Basketball', image_url:"baloncesto.jpg", price:5.50, category:cat_1)
Product.create(name:'Soccer ball', image_url:"futbol.jpg", price:6.50, category:cat_1, discount:2)
Product.create(name:'Man T-Shirt', image_url:"camiseta_hombre.jpg", price:15.95, category:cat_4)
Product.create(name:'Woman T-Shirt', image_url:"camiseta_mujer.jpg", price:14.50, category:cat_4)
Product.create(name:'Wilson Racket', image_url:"raqueta2.jpg", price:32.50, category:cat_2, discount:12)
Product.create(name:'Other Brand Racket', image_url:"raqueta1.jpg", price:28, category:cat_2)
Product.create(name:'45-pound dumbbell', image_url:"pesa1.jpg", price:45.75, category:cat_5)
Product.create(name:'60-pound dumbbell', image_url:"pesa2.jpg", price:50, category:cat_5, discount: 15)
Product.create(name:'Woman tennis shoes', image_url:"tenis_mujer.jpg", price:100, category:cat_3)
Product.create(name:'Man tennis shoes', image_url:"tenis_hombre.jpg", price:150, category:cat_3)



