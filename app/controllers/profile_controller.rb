class ProfileController < ApplicationController
  def show
    current_user.name = "Katie"
  end

  def update
  end

  def edit
  end
end
