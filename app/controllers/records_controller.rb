class RecordsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_tweet, only: [:edit, :show, :update, :destroy]
  before_action :move_to_index, only: [:edit, :show, :update, :destroy]
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
  end

  def edit
  end

  def update
    if @record.update(record_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
    @record.destroy
    redirect_to action: :index
  end

  def search
    @record = Record.search(params[:keyword])
  end

  private

  def record_params
    params.require(:record).permit(:image, :name, :description, :cut_id, :color_id, :parm_id, :treatment_id, :day, :manager).merge(user_id: current_user.id)
  end
  
  def set_tweet
    @record = Record.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index if current_user.id != @record.user_id
  end
end
