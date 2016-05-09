class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  def create

    @user= User.new(user_params)
    @user.save
    redirect_to new_session_path
  end

  def destroy
    @user = User.find(session[:user_id])
    @user.destroy  
    redirect_to sessions_new_path
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    @user.save
    redirect_to users_path
 
  end

end

private 

def user_params
  params.require(:user).permit(:username, :fname, :lname, :email, :password)
end
