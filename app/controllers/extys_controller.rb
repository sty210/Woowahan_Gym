class ExtysController < ApplicationController
<<<<<<< HEAD
  respond_to :json

  def new
  end

  def create
    @exty = Exty.new(exty_params)

    if @exty.save
      redirect_to @exty
    else
      render 'new'
    end
  end

  def index
    @exties = Exty.all
    respond_with(@exties)
  end

  def show
    @exty = Exty.find(params[:id])
  end

  private

  def exty_params
    params.require(:exty).permit(:ex_det_cd, :ty_det_cd)
  end
=======
>>>>>>> d7e83b8befe27844801ac049d523dd392e8bd944
end
