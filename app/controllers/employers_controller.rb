class EmployersController < ApplicationController
	def index
		
	end

	def new
    @employer = Employer.new
  end

  def create
    @employer = Employer.new(employer_params)
    if @employer.save
      session[:user_id] = @employer.id.to_s
      flash[:welcome] = "thanks for signing up, #{@employer.first_name}!"
      redirect_to employers_path
    else
      render :new
    end
  end

private
 def employer_params
    params.require(:employer).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
