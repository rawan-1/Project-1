class AppliancesController < ApplicationController
  def index
    @appliances = Appliance.all
  end

  def show
    @appliance = Appliance.find_by(id: params[:id])
  end
end
