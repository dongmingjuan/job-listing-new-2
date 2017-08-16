class JobsController < ApplicationController
  before_action :authenticate_user!
  def index
    @jobs = case params[:order]
    when 'by_upper_bound'
      Job.published.order('wage_upper_bound DESC')
    when  'by_lower_bound'
     Job.published.order('wage_lower_bound DESC')
    else
      Job.published.recent
    end

  end
  def show
    @job = Job.find(params[:id])
    if @job.is_hidden
      redirect_to root_path
    end
  end
  private
  def job_params
    params.require(:job).permit(:title, :description)
  end
end
