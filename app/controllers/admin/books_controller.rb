class Admin::BooksController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_params

  def index
    @books = Book.all
  end

  private

  def book_params
    params.require(:book).permit(:title, :book_cover, :price, :author)
  end

  def admin_params
    redirect_to books_path, status: :forbidden unless current_user.admin?
    # params.require(:user = admin).permit(all)
end
