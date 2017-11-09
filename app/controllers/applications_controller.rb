class ApplicationsController < ApplicationController
  before_action :set_user, only: [:messages, :company_messages]
  def messages
    @applications = Application.where("user_id = #{@user}")
  end
  def company_messages
    @company = Company.where("user_id = #{@user}")
    @company_id = @company.ids
    @internship = Internship.where("company_id = #{@company_id.first}")
    @internship_id = @internship.ids
    @applications = Application.where("internship_id = #{@internship_id.first}")
  end
  def create
    @company = Company.find(params[:company_id])
    @application = Application.new(application_params)
    @internship = Internship.find(params[:internship_id])
    @application.user = current_user
    @application.internship = @internship
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
  def set_user
    @user = current_user.id
  end
end

