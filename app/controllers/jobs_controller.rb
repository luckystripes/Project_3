class JobsController < ApplicationController

  before_action :find_job, only:[:index, :show, :edit, :update, :destroy]
  
  def index
    # @jobs = Job.all
    # respond_to do |format|
    #     format.html { render 'front' }
    #     format.json { render json: Job.all[1..9]}
    #   end
  

  end
  # ----------------------------------------------------------

  def new
    @job = Job.new
  end
  # ----------------------------------------------------------

  def show

    @match = Match.where(user_accept: true, job_accept: nil, job_id: @job.id).first
    
    if (@match==nil)
      @seeker = Seeker.picked?(@job).first
    else 
      @seeker = @match.job
    end
  end
  
  # ----------------------------------------------------------

  def create
    @job = Job.new(jobs_params)
   
    if @job.save
      redirect_to @job
    else
      render :new
    end
  end
  # ----------------------------------------------------------

  def edit
   # find_job

    # unless logged_in? && current_user == @job.user_id
    # 	not_logged_in
    # end
  end
  # ----------------------------------------------------------

  def update
    if @job.update(jobs_params)
      redirect_to @job
    else
      render "Edit"
    end
  end
  # ----------------------------------------------------------

  def destroy
  	# if logged_in? && current_user.id==@job.user_id
			@job.destroy
			redirect_to root_path
	# 	else
	# 		not_logged_in
	# end
  end
  # ----------------------------------------------------------

  private
		def jobs_params
			params.require(:job).permit(:title, :job_type, :salary, :skill, :location)
		
		end

	 	def find_job
			@job = Job.find(params[:id])
		
	 	end

	 	# def not_logged_in
	 	# 	flash[:error] = "Don't touch not yours"
			# redirect_to job_path
	 	# end


end
