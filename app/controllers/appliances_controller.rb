class AppliancesController < ApplicationController
  def index
    @appliances = Appliance.all
  end

  def show
    @appliance = Appliance.find_by(id: params[:id])
  end

  def new
    @appliance = Appliance.new
  end

  def create
    appliance_params = params.require(:appliance).permit(:name, :image, :description)
    @appliance = Appliance.new(appliance_params)
    @appliance.provider_id = current_user.id
    @appliance.save
    redirect_to @appliance
  end
end
