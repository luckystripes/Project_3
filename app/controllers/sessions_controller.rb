class SessionsController < ApplicationController

  def new
  end

  def create
    
    user = User.find_by(email: params[:login][:email])

    if user && user.authenticate(params[:login][:password]) 
      session[:user_id] = user.id.to_s
      if user.type == "Employer"
        redirect_to employers_path
      elsif user.type == "Seeker"
        redirect_to seekers_path
      end

    else
    flash.now[:danger] = 'Invalid login ID/password combination'
    render :new

    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path
  end
end
