# require "stripe"

class PurchasesController < ApplicationController
  before_action :authenticate_user!
  before_action :load_book, except: [:index]

  def index
    @sales = Purchase.where(user: current_user)
    @sales = current_user.purchases
  end

  def new
    @purchase = Purchase.new
  end

  def create
    stripe_token = purchases_params[:stripe_token]
    stripe_charge = StripeServices::CreateCharge.call(@book, current_user, stripe_token)
    Purchase.create(book: @book, user: current_user, stripe_charge_id: stripe_charge.id)
    PurchaseMailer.with(user: User.first).thank_you.deliver_later
    redirect_to purchases_path
  end

private

  def load_book
    @book = Book.find(params[:book_id])
  end

  def purchases_params
    params.require(:purchase).permit(:stripe_token)
  end
end
