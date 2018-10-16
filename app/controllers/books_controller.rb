class BooksController < ApplicationController
  def index
    @books = Book.all

  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.create(book_params)
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book.update_attributes(book_params)

    if book.save
      flash.now[:success] = "Book has been saved."
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy

  end

private

  def book_params
    params.require(:book).permit(:title, :avatar, :price)
  end
end
