class SessionsController < ApplicationController


  def new
    @users = User.all
    
  end


  def create
    session[:user_id] = sessions_params[:id]
    redirect_to user_path(session[:user_id])
  end

  def destroy
    session.clear
    redirect_to root_path
  end



  def sessions_params
    params.require(:user).permit(:id)
  end
end