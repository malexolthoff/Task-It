class UsersController < ApplicationController
  before_action :set_user only: ()
  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone, :photo, :description, :education, :experience, :hobbies, :skills, :role)
  end

  def set_user
    @user = User.find(params[:id])
  end



end
