module API
  #class SeekersController < ApplicationController
  	#protect_from_forgery with: :null_session
  	#def index
		 	#render json: Seeker.all
		#end
		#def show
  		#render json: Seeker.find(params[:id])
		#end
		#def create
	    #@seeker = Seeker.new(seeker_params)
	    #if @seeker.save
	    	#render json: seeker, status: 201, location: [:api, seeker]
		      #? session[:user_id] = @seeker.id.to_s
		      #? flash[:welcome] = "thanks for signing up, #{@seeker.first_name}!"
		      #? redirect_to seekers_path
	    #else
	    	#render json: seeker.errors, status: 422
	      	#? render :new
	    #end
  	#end
  	#def update #this action saves the change in the database.
	    #@seeker = Seeker.find(params[:id]) #retrives a single record
	    #if @seeker.update_attributes(seeker_edit_params)  #If a record is successfully updated, redirect to the reports index.  
	      #head 204
	      #? redirect_to seekers_path
	    #? else
	      #render json: seeker.errors, status: 422
	      #? render :edit  
	    #end
  	#end
	  #private
		  #def seeker_params
		    #params.require(:seeker).permit(:first_name, :last_name, :email, :password, :password_confirmation)
		  #end
		  #def seeker_edit_params
    		#params.require(:seeker).permit(:first_name, :last_name, :email, :phone, :job_type, :skill_set, :edu_level, :work_exp, :date_available, :address, :city, :state, :zipcode,:password, :password_confirmation, )
  		#end
		#end 
	# end #end of Controller

end #end of module