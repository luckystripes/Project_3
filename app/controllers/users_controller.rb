class UsersController < ApplicationController
 
	def index
	 	#render json: Job.all
		@recent_jobs = Job.last(9).reverse  
		@matches = Match.all_matched.count
		@jobs = Job.all.count

		response = {:recent_jobs => @recent_jobs, :matches => @matches, :jobs => @jobs}

		respond_to do |format|
	    format.html { render 'index' }
	    format.json { render :json => response }
		end
	end

end

# def index
#  	@recent_jobs = Job.all[1..9]
#  	@matches = Match.all

#  	response = {:recent_jobs => @recent_jobs, :matches => @matches}

#  	respond_to do |format|
#         format.html { render 'index' }
#         format.json { render :json => response }
#     end
#  end
# end





