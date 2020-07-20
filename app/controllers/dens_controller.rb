class DensController < ApplicationController

  def index
    @dens = Den.all
  end

  def show
    @den = Den.find(params[:id])
  end

  def new
    @den = Den.new
  end

  def edit
    @den = Den.find(params[:id])
  end

  def create
    @den = Den.new(den_params)
    @den.save
   
    redirect_to den_path(@den)
  end

  def update
    @den = Den.find(params[:id])
    @den.update(den_params)
    redirect_to den_path(@den)
  end

  private

  def den_params
    params.require(:den).permit(:den_name, :grade, :meeting_time, :pack_id, :scout_id, :leader_id)
  end
  

end
