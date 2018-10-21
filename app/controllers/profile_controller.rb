class ProfileController < ApplicationController
  def show
    # current_user.name = "Katie"
    def cropped_avatar
      #@cropped_avatar = current_user.avatar.variant(resize: "150x200")
    end
  end

  def edit
  end

  def update
    current_user.update_attributes(user_params)

    if current_user.save
      redirect_to profile_path
    else
      render :edit
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :avatar)
  end
end
