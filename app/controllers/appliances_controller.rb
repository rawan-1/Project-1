class AppliancesController < ApplicationController
  def index
    @appliances = Appliance.all
  end

  def show
    @appliance = Appliance.find_by(id: params[:id])
  end

  def borrow
    @appliance = Appliance.find_by(id: params[:id])
    @appliance.customer_id = current_user.id
    @appliance.availability = "Not Available"
    @appliance.save
    redirect_to appliances_path
  end

  def new
    @appliance = Appliance.new
  end

  def edit
    @appliance = Appliance.find_by(id: params[:id])
  end

  def update
    appliance_params = params.require(:appliance).permit(:name, :image, :description, :availability)
    @appliance = Appliance.find(params[:id])
    @appliance.update(appliance_params)
    redirect_to @appliance
  end

  def create
    appliance_params = params.require(:appliance).permit(:name, :image, :description, :availability)
    @appliance = Appliance.new(appliance_params)
    @appliance.provider_id = current_user.id
    @appliance.save
    redirect_to @appliance
  end

  def destroy
    @appliance = Appliance.find(params[:id])
    @appliance.destroy
    redirect_to appliances_path
  end
end
