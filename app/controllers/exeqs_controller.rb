class ExeqsController < ApplicationController
<<<<<<< HEAD
  respond_to :json

  def new
  end

  def create
    @exeq = Exeq.new(exeq_params)

    if @exeq.save
      redirect_to @exeq
    else
      render 'new'
    end
  end

  def index
    @exeqs = Exeq.all
    respond_with(@exeqs)
  end

  def show
    @exeq = Exeq.find(params[:id])
  end

  private

  def exeq_params
    params.require(:exeq).permit(:ex_det_cd, :eq_det_cd)
  end
=======
>>>>>>> d7e83b8befe27844801ac049d523dd392e8bd944
end
