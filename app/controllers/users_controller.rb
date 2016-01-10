class UsersController < ApplicationController
  def new
  end

  def create
    # render plain: params[:user].inspect
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:user_id, :user_pw, :user_nm, :user_tel,
                                 :user_rgt_day, :rsd_rgn_cd, :mileage)
  end
end
