class CommoncodesController < ApplicationController
<<<<<<< HEAD
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
    @commoncds = Commoncd.all
    respond_with(@commoncds)
  end

  def show
    @commoncd = Commoncd.find(params[:id])
  end

  private

  def commoncd_params
    params.require(:commoncd).permit(:main_cd, :det_cd, :cd_nm)
  end
=======
>>>>>>> d7e83b8befe27844801ac049d523dd392e8bd944
end
