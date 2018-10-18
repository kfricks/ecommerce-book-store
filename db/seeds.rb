# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#puts everything in transaction container so i don't have to recreate users each time
ActiveRecord::Base.transaction do
  User.create!(name: "Katie", email: "user@user.com", password:"tester")

  kurt_v = User.create!(name: "Kurt Vonny", email: "author@author.com", password:"tester")

  books = [
    { title: "Book1", price: 15.99 },
    { title: "Book2", price: 24.99 }
    ]
  books.each do |book|
      Book.create!(title: book[:title], price: book[:price])
  end

  kurt_v.books << Book.all
end
