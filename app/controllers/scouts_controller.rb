class ScoutsController < ApplicationController
  
    def index
      @scouts = Scout.all
    end
  
    def show
      @scout = Scout.find(params[:id])
    end
  
    def new
      @scout = Scout.new
    end
  
    def edit
      @scout = Scout.find(params[:id])
    end
  
    def create
      @scout = Scout.new(scout_params)
      @scout.save
      redirect_to scout_path(@scout)
    end
  
    def update
      @scout = Scout.find(params[:id])
      @scout.update(scout_params)
      redirect_to scout_path(@scout)
    end
  
    private
  
    def scout_params
      params.require(:scout).permit(:first_name, :last_name, :grade, :pack_id, :den_id)
    end
    
end
