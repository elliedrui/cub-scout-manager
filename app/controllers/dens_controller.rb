class DensController < ApplicationController
  before_action :authentication_required
  skip_before_action :authentication_required, only: [:index]
  before_action :set_den, only: [:show, :edit, :update, :destroy]

  def index
    if params[:pack_id]
      @dens = Den.find(params[:pack_id]).dens
    else
      @dens = Den.all
    end
  end

  def show
  end

  def search
    @den = Den.find_by(den_name: params[:den_name])
    redirect_to den_path(@den)
  end


  def new
    if params[:pack_id]
      @den = Den.new(pack_id: params[:pack_id])
    else
      @den = Den.new
    end
  end

  def edit
  end

  def create
    @den = Den.new(den_params)
    @den.save
   
    redirect_to den_path(@den)
  end

  def update
    @den.update(den_params)
    redirect_to den_path(@den)
  end

  def destroy
    @den.destroy
    redirect_to dens_path
  end

  private

  def set_den
    @den = Den.find(params[:id])
  end

  def den_params
    params.require(:den).permit(:den_name, :grade, :meeting_time, :pack_id, :scout_id, :leader_id)
  end
  
  
  
end
