class ApplicationsController < ApplicationController

  def create
    Article.create(application_params)
    redirect_to internship_path
  end

  private
  def application_params
    params.require(:application).permit(:message)
  end
end

