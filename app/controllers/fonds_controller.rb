class FondsController < ApplicationController # :nodoc:

  before_action :set_fond, only: [:show, :edit, :update, :destroy]

  def index
    @fonds = Fond.all
  end

  def show
  end

  def new
    @fond = Fond.new
  end

  def create
    @fond = Fond.new(fond_params)
    if @fond.save
      redirect_to @fond
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @fond.update_attributes(fond_params)
      redirect_to @fond
    else
      render :edit
    end
  end

  def destroy
    @fond.destroy
    redirect_to fonds_path
  end

  private

  def set_fond
    @fond = Fond.find(params[:id])
  end

  def fond_params
    params.require(:fond).permit(:title, :summary, :body)
  end
end
