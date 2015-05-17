class EmployersController < ApplicationController
	def index
		@employer = current_user
    @jobs = @employer.jobs
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

  def edit
    @employer = Employer.find(params[:id])
  end

  def update
    @employer = Employer.find(params[:id])
    if @employer.update(employer_edit_params)
      redirect_to employers_path
    else
      render :edit
    end
  end

private
 def employer_params
    params.require(:employer).permit(:first_name, :last_name, :email, :password, :password_confirmation, :avatar)
  end

 def employer_edit_params
  params.require(:employer).permit(:first_name, :last_name, :email, :password, :password_confirmation, :phone, :address, :city, :state, :zipcode, :company_name, :avatar)
  end
end
