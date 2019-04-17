# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.destroy_all
User.destroy_all
Category.destroy_all
Comment.destroy_all
Book.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('cities')
ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('categories')
ActiveRecord::Base.connection.reset_pk_sequence!('comments')
ActiveRecord::Base.connection.reset_pk_sequence!('books')

50.times do |i|
	city = City.create!(
    name: Faker::ElderScrolls.city,
    zip_code: Faker::Address.zip_code)
	print '.'
end
puts '=== City DB created ==='

50.times do |j|
	user = User.create!(
	city_id: City.all.sample.id,
    first_name: Faker::Superhero.prefix,
    last_name: Faker::BackToTheFuture.character,
    user_name: Faker::DragonBall.character,
    mail: Faker::Internet.email,
	password: "password#{j}")
  print '.'
end
puts '=== User DB created ==='


50.times do |k|
	book = Category.create!(
    main_category:Faker::Book.genre,
    sub_category: Faker::Book.genre)
	print '.'
end
puts '=== Category DB created ==='


50.times do |k|
	book = Book.create!(
    category_id: Category.all.sample.id,
    title: Faker::Book.title,
    author: Faker::Book.author,
    publisher: Faker::Book.publisher)
	print '.'
end
puts '=== Book DB created ==='

50.times do |l|
	comment = Comment.create!(
    user_id: User.all.sample.id,
    event_id: Event.all.sample.id,
    title: Faker::Pokemon.move,
    content: Faker::DumbAndDumber.quote)
	print '.'
end
puts '=== Comment DB created ==='
