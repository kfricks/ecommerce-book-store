class PurchaseController < ApplicationController
  before_action :authenticate_user!
  before_action :load_book, except: [:index]

  def index
    @sales = Sale.where(user: current_user)
    @sales = current_user.sales
  end

  def show
    # ...
  end

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchasce.new(book: @book, user: current_user)
  end

  def edit
    # ...
  end

  def update
    # ...
  end


private

  def load_book
    @book = Book.find(params[:book_id])

end
