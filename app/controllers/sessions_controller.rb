class SessionsController < ApplicationController
  def new
  end
  
  def create
    @user = User.find_by_email(params[:email])
    if @user.present?
      cookies["user_id"] = @user.id
      redirect_to root_url
    else
      flash[:notice] = "Account does not exist!"
      render 'new'
    end
    end  
end
