class GymsController < ApplicationController
<<<<<<< HEAD
  respond_to :json

  def new
  end

  def create
    @gym = Gym.new(gym_params)

    if @gym.save
      redirect_to @gym
    else
      render 'new'
    end
  end

  def index
    @gyms = Gym.all
    respond_with(@gyms)
  end

  def show
    @gym = Gym.find(params[:id])
  end

  private

  def gym_params
    params.require(:gym).permit(:gym_nm, :gym_tel, :gym_adr, :rgn_cd)
  end
=======
>>>>>>> d7e83b8befe27844801ac049d523dd392e8bd944
end
