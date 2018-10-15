class BooksController < ApplicationController
  def index
    @books = Book.all

  end

  def show
    @book = Book.find(params[:id])
  end

  def edit

  end

  def update
    book.update_attributes(book_params)

    if book.save
      redirect_to book_path
    else
      render :edit
    end
  end

  def destroy

  end

private

  def book_params
    params.require(:book).permit(:title, :avatar)
  end
end
