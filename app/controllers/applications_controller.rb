class ApplicationsController < ApplicationController

  def messages
    @user = User.find(params[:user_id])
    @applications = Application.all
  end
  def company_messages
    @company = Company.find(params[:company_id])
    @internship = Internship.find(params[:internship_id])
    @applications = Application.where('company_id = ?', "#{params[:company_id]}")
  end
  def create
    @company = Company.find(params[:company_id])
    @application = Application.new(application_params)
    @internship = Internship.find(params[:internship_id])
    @application.internship_id = @internship.id
    @application.company = @company
    if @application.save
      redirect_to company_path(@company)
    else
      render 'internships/show'
    end
  end

  private
  def application_params
    params.require(:application).permit(:message)
  end
end

