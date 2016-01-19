class ExtysController < ApplicationController
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
    # @exty = Exty.find(params[:id])
    @extys = Exty.where(ty_det_cd: params[:id])
    @commoncds = Commoncd.where(main_cd: 'AA0003')
  end

  private

  def exty_params
    params.require(:exty).permit(:ex_det_cd, :ty_det_cd)
  end
end
