class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @appliance = Appliance.new
  end

  def edit
  end
end
