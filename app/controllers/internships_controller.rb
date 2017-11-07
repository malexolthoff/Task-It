class InternshipsController < ApplicationController
  before_action :set_internship, only: [:show, :delete, :destroy, :edit ]
  def index
    @internships = Internship.all
  end

  def show
  end

  def new
    @company = Company.find(params[:company_id])
    @internship = Internship.new
  end

  def create
    @company = Company.find(params[:company_id])
    @internship = Internship.new(internship_params)
    @internship.company = @company
    if @internship.save
      redirect_to company_path(@company)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @internship.update(internship_params)
  end

  def destroy
    @internship.destroy
    redirect_to
  end

  private
  def internship_params
    params.require(:internship).permit(:name, :responsibilities, :qualifications, :length, :hours)
  end

  def set_internship
    @internship = Internship.find(params[:id])
  end
end
