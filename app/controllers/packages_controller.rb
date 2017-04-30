class PackagesController < ApplicationController
  def index
    @packages = Package.all
  end

  def show
    @package = Package.find(params[:id])
  end

  def new
    @package = Package.new
  end

  def create
    @package = Package.new(package_params)

    if @package.save
      redirect_to @package
    else
      render :new
    end

  end

  def edit
  end

  def update
  end

  private
    def set_package
      @package = Package.find(params[:id])
    end

    def package_params
      params.require(:package).permit(:weight, :size, :warehouse_location,
      :recipent_address, :distance, :delivery_time, :recipent_name, :recipent_mob,
      :price, :status)
    end

end
