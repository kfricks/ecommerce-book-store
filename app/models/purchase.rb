class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :book

  attr_reader :stripe_token

  after_create :make_calculations_and_lots_of_money

private

  def make_calculations_and_lots_of_money
    MakeCalculationsAndLotsOfMoneyJob.perform_later(book)
  end
end
