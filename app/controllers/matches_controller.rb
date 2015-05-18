class MatchesController < ApplicationController
	def create
		@match = Match.find_or_create_by(user_id: params[:response][:user_id], job_id: params[:response][:job_id])
		if (params[:response][:user_accept]!= nil)
        	@match.user_accept = params[:response][:user_accept]
        	@match.save
	    	redirect_to seeker_path(@match.user_id)
    	elsif (params[:response][:job_accept]!= nil)
        	@match.job_accept = params[:response][:job_accept]
        	@match.save
	 	   redirect_to job_path(@match.job_id)
        end

	    end

end
