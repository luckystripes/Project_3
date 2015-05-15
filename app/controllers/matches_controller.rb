class MatchesController < ApplicationController
	def create
		@match = Match.find_or_create_by(user_id: params[:seeker_response][:user_id], job_id: params[:seeker_response][:job_id])
		if (params[:seeker_response][:user_accept]!= nil)
        	@match.user_accept = params[:seeker_response][:user_accept]
    	elsif (params[:seeker_response][:job_accept]!= nil)
        	@match.job_accept = params[:seeker_response][:job_accept]
        end
	    @match.save
	    redirect_to seeker_path(@match.user_id)
	    end

end
