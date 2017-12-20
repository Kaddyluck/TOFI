class FondsController < ApplicationController # :nodoc:
  before_action :set_fond, only: :show

  def index
    @fonds = Fond.all
  end

  def show
  end

  def add_money
    fond = Fond.find(params[:id])
    fond.update_attribute(:already_collected, fond.already_collected + 2)
  end

  private

  def set_fond
    @fond = Fond.find(params[:id])
  end

end
