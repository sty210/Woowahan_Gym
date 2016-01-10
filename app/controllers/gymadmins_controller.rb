class GymadminsController < ApplicationController
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
end
