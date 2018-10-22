class Admin::BooksController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_auth

  def index
    @books = Book.all
  end

  private

  def book_params
    params.require(:book).permit(:title, :book_cover, :price, :author)
  end

  def admin_auth
    redirect_to books_path, status: :forbidden unless current_user.admin?
    # params.require(:user = admin).permit(all)
  end
end
