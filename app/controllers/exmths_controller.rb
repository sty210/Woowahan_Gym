class ExmthsController < ApplicationController
  respond_to :json

  def new
  end

  def create
    @exmth = Exmth.new(exmth_params)

    if @exmth.save
      redirect_to @exmth
    else
      render 'new'
    end
  end

  def index
    @exmths = Exmth.all
    respond_with(@exmths)
  end

  def show
    @exmth = Exmth.find(params[:id])
  end

  private

  def exmth_params
    params.require(:exmth).permit(:ex_det_cd, :ex_mth_img, :ex_mth_ep)
  end
end
