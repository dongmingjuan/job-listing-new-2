class Admin::ResumesController < ApplicationController
  before_action :authenticate_user!
  before_action :required_admin
  layout 'admin'
  def index
    @job = Job.find(params[:job_id])
    @resumes = @job.resumes.all
  end
  private
  def resume_params
    params.require(:resume).permit(:content)
  end
end
