class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar

  has_many :book_releases, foreign_key: :author_id
  has_many :books, through: :book_releases

  has_many :purchases
  has_many :purchased_books, through: :purchases, class_name: "Book", foreign_key: :book_id
end
