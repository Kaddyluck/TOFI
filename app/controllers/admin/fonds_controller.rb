class Admin::FondsController < Admin::AdminController # :nodoc:
  before_action :set_fond, only: [:edit, :update, :destroy]

  def new
    @fond = Fond.new
  end

  def create
    @fond = Fond.new(fond_params)
    if @fond.save
      redirect_to @fond, success: 'Фонд успешно создан'
    else
      render :new, danger: 'Фонд не создан'
    end
  end

  def edit
  end

  def update
    if @fond.update_attributes(fond_params)
      redirect_to @fond, success: 'Фонд успешно обновлён'
    else
      render :edit, danger: 'Фонд не обновлён'
    end
  end

  def destroy
    @fond.destroy
    redirect_to fonds_path, success: 'Фонд успешно удалён'
  end

  private

  def set_fond
    @fond = Fond.find(params[:id])
  end

  def fond_params
    params.require(:fond).permit(:title, :summary, :body, :image, :all_tags)
  end
end
