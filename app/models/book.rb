class Book < ApplicationRecord

  has_many :book_releases
  has_many :authors, through: :book_releases

  has_one_attached :avatar

  has_many :purchases
  has_many :users, through: :purchases

end
