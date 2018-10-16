class Book < ApplicationRecord
  has_many :users
  has_many :purchases
  has_one_attached :avatar
end
