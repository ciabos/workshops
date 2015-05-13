# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = User.create(firstname: 'Patryk', lastname: 'Szeliga', email: 'szeliga.patryk92@gmail.com', admin: true, password: 'password')
User.create(firstname: 'Marcin', lastname: 'Kowalski', email: 'marcin_kowalski@mail.com', password: 'password')
User.create(firstname: 'Adam', lastname: 'Kowalski', email: 'adam_kowalski@mail.com', password: 'password')
User.create(firstname: 'Zenon', lastname: 'Kowalski', email: 'zenon_kowalski@mail.com', password: 'password')
User.create(firstname: 'Kamil', lastname: 'Nowak', email: 'kamil_nowak@mail.com', password: 'password')
User.create(firstname: 'Krzysztof', lastname: 'Nowak', email: 'krzysztof_nowak@mail.com', password: 'password')
category = Category.create(name: 'Games')
diablo2 = Product.create(title: 'Diablo 2', description: 'Legendary game, that needs no description :)', price: '19.99', category_id: category.id, user_id: admin.id )
Product.create(title: 'PES 2015', description: 'Pro Evolution Soccer, which is better then FIFA.', price: '199.99', category_id: category.id, user_id: admin.id )
Product.create(title: 'FIFA', description: 'Game similiar to PES , but pes is better anywayz', price: '249.99', category_id: category.id, user_id: admin.id )
Review.create(content: 'I like this game a lot, it is very cool. Diablo 3 is even better', rating: 5, product_id: diablo2.id, user_id: admin.id )