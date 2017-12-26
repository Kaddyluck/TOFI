class TagsController < ApplicationController
  def show
    @tag = Tag.find_by(name: params[:id])
    @fonds = @tag.fonds
  end
end