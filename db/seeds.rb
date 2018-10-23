#
# load data:      rails db:seed
#
# reset data:     rails db:reset
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# first line puts everything in transaction container so i don't have to recreate users each time
require 'faker'

ActiveRecord::Base.transaction do
  User.create!(name: "admin3000", email: "admin@admin.com", password:"tester", admin:true, author: false)

  User.create!(name: "tester", email: "tester3000@tester.com", password: "tester", admin: false, author: false)

  User.create!(name: "tester-author", email: "tester-author@tester.com", password: "tester", admin: false, author: true)

  User.create!(name: "Super Admin", email: "superadmin@admin.com", password: "tester", admin:true, author: true)

  50.times do
    book = Book.new
    book.title = Faker::Book.title
    book.price = rand(5..20)
    book.author = User.where(author:true).sample
    book.book_cover.attach(io: File.open(Rails.root.join('public/Enchantment-Book-Cover-Best-Seller1.jpg')), filename:"Enchantment-Book-Cover-Best-Seller1.jpg")
    book.save!
  end

  User.each do

  end

end
