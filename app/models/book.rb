class Book < ApplicationRecord

  belongs_to :author, class_name: "User"
  # prob need line about adding author

  has_one_attached :book_cover

  has_many :purchases
  has_many :users, through: :purchases

  def stripe_amount
    (price * 100).to_i
  end

end
