class SeekersController < ApplicationController
	def index
		
	end

  def show
    @seeker = Seeker.find(params[:id])
  end

  def show_all
    @seeker = Seeker.find(params[:id])
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

  def edit #This action is the first part of editing a page.  "retrives a single record"
    @seeker = Seeker.find(params[:id]) 
  end

  def update #this action saves the change in the database.
    @seeker = Seeker.find(params[:id]) #retrives a single record
    if @seeker.update_attributes(seeker_edit_params)  #If a record is successfully updated, redirect to the reports index.  
      redirect_to seekers_path
    else
      render :edit  #If a record is not successfully updated, render a new edit form.
    end
  end

private
  def seeker_params
    params.require(:seeker).permit(:first_name, :last_name, :email, :password, :password_confirmation, :avatar)
  end
  def seeker_edit_params
    params.require(:seeker).permit(:first_name, :last_name, :email, :phone, :job_type, :skill_set, :edu_level, :work_exp, :date_available, :address, :city, :state, :zipcode,:password, :password_confirmation, :avatar)
  end
end #end of controller
