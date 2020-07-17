class PacksController < ApplicationController

  
  def index
    @packs = Pack.all
  end

  def show
    @pack = Pack.find(params[:id])
  end

  def new
    @pack = Pack.new
  end

  def edit
    @pack = Pack.find(params[:id])
  end

  def create
    @pack = Pack.new(pack_params)
    @pack.save
    redirect_to pack_path(@pack)
  end

  def update
    @pack = Pack.find(params[:id])
    @pack.update(pack_params)
    redirect_to pack_path(@pack)
  end

  private

  def pack_params
    params.require(:pack).permit(:pack_number, :charter_organization)
  end

end
