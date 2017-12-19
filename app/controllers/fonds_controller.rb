class FondsController < ApplicationController # :nodoc:
  before_action :set_fond, only: :show

  def index
    @fonds = Fond.all
  end

  def show
  end

  private

  def set_fond
    @fond = Fond.find(params[:id])
  end

end
