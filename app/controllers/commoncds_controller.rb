class CommoncdsController < ApplicationController
  respond_to :json

  def new
  end

  def create
    @commoncd = Commoncd.new(commoncd_params)

    if @commoncd.save
      redirect_to @commoncd
    else
      render 'new'
    end
  end

  def index
    if params[:category] == 'exty'
      @excds = Exty.where(ty_det_cd: params[:id])
    elsif params[:category] == 'expt'
      @excds = Expt.where(pt_det_cd: params[:id])
    end
    @commoncds = Commoncd.where(main_cd: 'AA0003')
    @exmths = Exmth.all
  end

  def show
    # @commoncd = Commoncd.find(params[:id])
    # if params[:category] == "exty"
    #  @excds = Exty.where(ty_det_cd: params[:id])
    # else
    #  @excds = Expt.where(pt_det_cd: params[:id])
    # end
    # @exths = Exmth.all
  end

  private

  def commoncd_params
    params.require(:commoncd).permit(:main_cd, :det_cd, :cd_nm)
  end
end
