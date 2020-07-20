class PacksController < ApplicationController
  before_action :set_pack, only: [:show, :edit, :update, :destroy]
  
  def index
    @packs = Pack.all
    
  end

  def show
  end

  def new
    @pack = Pack.new
  end

  def edit
  end

  def create
    @pack = Pack.new(pack_params)

    if @pack.save
      flash[:message] = "Successfully created!"
      redirect_to pack_path(@pack)
    else
      render :new
    end
  end

  def update
    @pack.update(pack_params)
    redirect_to pack_path(@pack)
  end

  def destroy
    @pack.destroy
    redirect_to packs_path
  end

  private

  def set_pack
    @pack = Pack.find(params[:id])
  end

  def pack_params
    params.require(:pack).permit(:pack_number, :charter_organization)
  end

end
