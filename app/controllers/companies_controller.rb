class CompaniesController < ApplicationController

  def index
    # @companies = Company.where.not(latitude: nil, longitude: nil)
    if params[:search]
      @companies = Company.search(params[:search])
    else
      @companies = Company.where.not(latitude: nil, longitude: nil)
    end

    @hash = Gmaps4rails.build_markers(@companies) do |company, marker|
      marker.lat company.latitude
      marker.lng company.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
    @company = Company.find(params[:id])
    # @company = Company.where.not(latitude: nil, longitude: nil)
    @internship = Internship.new

    @hash = Gmaps4rails.build_markers(@company) do |company, marker|
      marker.lat company.latitude
      marker.lng company.longitude
    end
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.create(company_params)
    @company.user = current_user
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
    @company.destroy
    redirect_to root_path
  end

  private

  def company_params
    params.require(:company).permit(:name, :industry, :photo, :photo_cache, :address, :description)
  end

end
