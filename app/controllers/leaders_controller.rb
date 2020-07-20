class LeadersController < ApplicationController

  before_action :set_leader, only: [:show, :edit, :update, :destroy]

  def index
    @leaders = Leader.all
  end

  def show
  end

  def new
    @leader = Leader.new
  end

  def edit
  end

  def create
    @leader = Leader.new(leader_params)
    @leader.save
    redirect_to leader_path(@leader)
  end

  def update
    @leader.update(leader_params)
    redirect_to leader_path(@leader)
  end

  def destroy
    @leader.destroy
    redirect_to leaders_path
  end


  private

  def set_leader
    @leader = Leader.find(params[:id])
  end

  def leader_params
    params.require(:leader).permit(:first_name, :last_name, :is_user, :den_id)
  end
  

end
