class UsersController < ApplicationController
 
 def index
 	respond_to do |format|
        format.html { render 'index' }
        format.json { render json: Job.all[1..9]}
    end
 end

end
