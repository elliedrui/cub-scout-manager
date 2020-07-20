class ScoutsController < ApplicationController
  before_action :set_scout, only: [:show, :edit, :update, :destroy]


    def index
      if params[:den_id]
        @scouts = Den.find(params[:den_id]).scouts
      else
        @scouts = Scout.all
      end
    end
  
    def show
    end
  
    def new
      if params[:den_id]
        @scout = Scout.new(den_id: params[:scout_id])
      else
        @scout = Scout.new
      end
    end
  
    def edit
    end
  
    def create
      @scout = Scout.new(scout_params)
      if @scout.save
        flash[:message] = "Successfully created!"
        redirect_to scout_path(@scout)
      else 
        render :new
      end
    end
  
    def update
      @scout.update(scout_params)
      redirect_to scout_path(@scout)
    end
  
    def destroy
      @scout.destroy
      redirect_to scouts_path
    end

    private

    def set_scout
      @scout = Scout.find(params[:id])
    end
  
    def scout_params
      params.require(:scout).permit(:first_name, :last_name, :grade, :pack_id, :den_id)
    end
    
end
