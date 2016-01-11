class GymadminsController < ApplicationController
<<<<<<< HEAD
  respond_to :json

  def new
  end

  def create
    @gymadm = Gymadm.new(gymadm_params)

    if @gymadm.save
      redirect_to @gymadm
    else
      render 'new'
    end
  end

  def index
    @gymadms = Gymadm.all
    respond_with(@gymadms)
  end

  def show
    @gymadm = Gymadm.find(params[:id])
  end

  private

  def gymadm_params
    params.require(:gymadm).permit(:gym_no, :adm_no)
  end
=======
>>>>>>> d7e83b8befe27844801ac049d523dd392e8bd944
end
