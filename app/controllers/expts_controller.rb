class ExptsController < ApplicationController
<<<<<<< HEAD
  respond_to :json

  def new
  end

  def create
    @expt = Expt.new(expt_params)

    if @expt.save
      redirect_to @expt
    else
      render 'new'
    end
  end

  def index
    @expts = Expt.all
    respond_with(@expts)
  end

  def show
    @expt = Expt.find(params[:id])
  end

  private

  def expt_params
    params.require(:expt).permit(:ex_det_cd, :pt_det_cd)
  end
=======
>>>>>>> d7e83b8befe27844801ac049d523dd392e8bd944
end
