class UsersController < ApplicationController
  include Common

  private

  def model_params
    params.require(:payload).permit(:full_name, :phone_number, :email, :profile_photo, :password, :password_confirmation)
  end

end
