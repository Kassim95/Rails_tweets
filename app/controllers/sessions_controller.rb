class SessionsController < ApplicationController
  def new
  	
  end

  def create
    @user = User.where(username: params[:user][:username]).first     
    if @user && @user.password == params[:user][:password]       
    	session[:user_id] = @user.id      
      session[:username] = @user.username 
    	redirect_to users_path
  	else
  		redirect_to new_session_path
  	end
  end

  def show
    @user = User.find(session[:user_id])
  end

  def destroy
  	 session[:user_id] = nil      
  	 redirect_to new_session_path
  end
end


