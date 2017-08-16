class JobsController < ApplicationController
  before_action :authenticate_user!
  def index
    @jobs = Job.all
  end
  def show
    @job = Job.find(params[:id])
  end
  private
  def job_params
    params.require(:job).permit(:title, :description)
  end
end