class RecordsController < ApplicationController

  def index
    @records = Record.all
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.create(record_params)
    if @record.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @record = Record.find(params[:id])
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    if @record.update(record_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
    record = Record.find(params[:id])
    record.destroy
    redirect_to action: :index
  end

  def search
    @record = Record.search(params[:keyword])
  end

  private

  def record_params
    params.require(:record).permit(:image, :name, :description, :cut_id, :color_id, :parm_id, :treatment_id, :day, :manager).merge(user_id: current_user.id)
  end
  
end
