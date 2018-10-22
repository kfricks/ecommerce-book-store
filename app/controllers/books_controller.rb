class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :edit, :new, :destroy]
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    # book.book_cover.attach(params[:book_cover])
    @book.author = current_user

    if @book.save!
      redirect_to root_path
    else
      render :new
    end

    @book.author = current_user unless current_user.admin?
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
   # @book = book.update_attributes(book_params)
    @book = Book.find(params[:id])
    @book.update(book_params)

    if @book.save
      flash.now[:success] = "Book has been saved."
      redirect_to book_path
    else
      render :edit
    end
  end

  def destroy

  end

private

  def book_params
    params.require(:book).permit(:title, :book_cover, :price, :author)
  end
end
