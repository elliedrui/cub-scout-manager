class LeadersController < ApplicationController

  def index
    @leaders = Leader.all
  end

  def show
    @leader = Leader.find(params[:id])
  end

  def new
    @leader = Leader.new
  end

  def edit
    @leader = Leader.find(params[:id])
  end

  def create
    @leader = Leader.new(leader_params)
    @leader.save
    redirect_to leader_path(@leader)
  end

  def update
    @leader = Leader.find(params[:id])
    @leader.update(leader_params)
    redirect_to leader_path(@leader)
  end

  private

  def leader_params
    params.require(:leader).permit(:first_name, :last_name, :is_user)
  end
  

end
