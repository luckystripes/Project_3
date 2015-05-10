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

	  #private
		  #def seeker_params
		    #params.require(:seeker).permit(:first_name, :last_name, :email, :password, :password_confirmation)
		  #end
		#end 
	# end #end of Controller

end #end of module