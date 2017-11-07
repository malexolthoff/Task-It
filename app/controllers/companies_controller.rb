class CompaniesController < ApplicationController
  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.find(params[:id])
    Company.create(company_params)
    if @company.save
      redirect_to company_path(@company)
    else
      render :new
    end

  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    @company.update(company_params)
    if @company.save
      redirect_to company_path(@company)
    else
      render :edit
  end
end

  def destroy
    @company = Company.find(params[:id])
    @user = User.find(@company.user_id)
    @company.destroy
    redirect_to user_path(@user)
  end

  private

  def company_params
    params.require(:company).permit(:name, :industry, :photo, :address, :description)
  end

end
