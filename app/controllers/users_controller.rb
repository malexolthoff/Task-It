class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
  end

  def update
    @user.update(user_params)
    redirect_to user_path(users)
  end

  def edit
  end


  private

  def set_user
    @user = User.find(params[:id])
  end
end

