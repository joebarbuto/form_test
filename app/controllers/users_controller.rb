class UsersController < ApplicationController

  def show
     @user = User.find(params[:id])

   end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to '/'
      end
    end

  private
  def user_params
      params.require(:user).permit(:name, :school)
  end


end
