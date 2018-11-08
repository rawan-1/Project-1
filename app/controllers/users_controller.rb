class UsersController < ApplicationController
  def index
  end

  def show
    @users = User.all
  end

  def edit
  end
end
