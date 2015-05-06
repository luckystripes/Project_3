class SeekersController < ApplicationController
	def index
		
	end

	def new
    @seeker = Seeker.new
  end

  def create
    @seeker = Seeker.new(seeker_params)
    if @seeker.save
      session[:user_id] = @seeker.id.to_s
      flash[:welcome] = "thanks for signing up, #{@seeker.first_name}!"
      redirect_to seekers_path
    else
      render :new
    end
  end

private
 def seeker_params
    params.require(:seeker).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
