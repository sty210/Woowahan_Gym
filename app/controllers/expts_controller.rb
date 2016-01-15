class ExptsController < ApplicationController
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
    # @expt = Expt.find(params[:id])
    @expts = Expt.where(pt_det_cd: params[:id])
    @commoncds = Commoncd.where(main_cd: 'AA0003')
  end

  private

  def expt_params
    params.require(:expt).permit(:ex_det_cd, :pt_det_cd)
  end
end
