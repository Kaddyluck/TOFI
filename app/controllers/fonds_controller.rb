class FondsController < ApplicationController # :nodoc:
  before_action :set_fond, only: :show

  def index
    @fonds = Fond.all
  end

  def show
  end

  def add_money
    @fond = Fond.find(params[:fond_id])
    @user = User.find(current_user)
    if params[:amount].to_i <= @user.balance
      @fond.update_attribute(:already_collected, @fond.already_collected + params[:amount].to_i)
      @user.update_attribute(:balance, @user.balance -= params[:amount].to_i)
    else
      render js: "alert('The number is: #{params[:id]}')"
    end

  end

  private

  def set_fond
    @fond = Fond.find(params[:id])
  end

end
