class RecordsController < ApplicationController

  def index
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

  private

  def record_params
    params.require(:record).permit(:image, :name, :description, :cut_id, :color_id, :parm_id, :treatment_id, :day, :manager).merge(user_id: current_user.id)
  end
  
end
