class AdminsController < ApplicationController
  respond_to :json

  def new
  end

  def create
    @admin = Admin.new(admin_params)

    if @admin.save
      redirect_to @admin
    else
      render 'new'
    end
  end

  def index
    @admins = Admin.all
    respond_with(@admins)
  end

  def show
    @admin = Admin.find(params[:id])
  end

  private

  def admin_params
    params.require(:admin).permit(:adm_id, :adm_pw, :adm_nm, :adm_tel)
  end
end
