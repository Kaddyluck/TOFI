class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def add_money
    @user = current_user
    @user.update_attribute(:balance, @user.balance + 200)
  end
end
