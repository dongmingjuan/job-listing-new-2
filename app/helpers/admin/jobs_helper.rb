module Admin::JobsHelper
  def render_job_status(job)
    if job.is_hidden
      "(Hide)"
    else
      "(Public)"
    end
  end
end
