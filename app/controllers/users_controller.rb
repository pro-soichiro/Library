class UsersController < ApplicationController
  before_action :set_user, only: [:show,:edit,:update,:destroy]
  layout 'other',only: :show

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name,:address,:email,:birthday)
    end
end