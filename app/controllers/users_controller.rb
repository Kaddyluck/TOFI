class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def add_money
    @user = User.find(params[:id])
  end
end
