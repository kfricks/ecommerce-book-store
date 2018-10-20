class AuthorsController < ApplicationController

  def index
    @authors = User.where(author:true)
  end

  def show

  end

end
