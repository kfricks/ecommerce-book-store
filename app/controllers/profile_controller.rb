class ProfileController < ApplicationController
  def show
    # current_user.name = "Katie"
  end

  def edit
  end

  def update
    current_user.name = params[:user][:name]
    current_user.save
    redirect_to profile_path
  end
end
