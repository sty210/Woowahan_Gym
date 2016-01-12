class GymusersController < ApplicationController
  respond_to :json

  def new
  end

  def create
    @gymuser = Gymuser.new(gymuser_params)

    if @gymuser.save
      redirect_to @gymuser
    else
      render 'new'
    end
  end

  def index
    @gymusers = Gymuser.all
    respond_with(@gymusers)
  end

  def show
    @gymuser = Gymuser.find(params[:id])
  end

  private

  def gymuser_params
    params.require(:gymuser).permit(:gym_no, :user_no)
  end
end
