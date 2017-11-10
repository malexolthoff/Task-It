class InternshipsController < ApplicationController
  before_action :set_internship, only: [ :show, :delete, :destroy, :edit ]
  def index
    @internships = Internship.all
  end

  def show
    @company = Company.find(params[:company_id])
    @company = @internship.company
    @application = Application.new
    @hash = Gmaps4rails.build_markers(@company) do |company, marker|
      marker.lat company.latitude
      marker.lng company.longitude
    end
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
    if @internship.save
      redirect_to company_path(@company)
    else
      render :edit
  end

  def destroy
    @company = @internship.company
    @internship.destroy
    redirect_to company_path(@company)
  end

  private
  def internship_params
    params.require(:internship).permit(:name, :description, :length, :hours)
  end

  def set_internship
    @internship = Internship.find(params[:id])
  end
end
