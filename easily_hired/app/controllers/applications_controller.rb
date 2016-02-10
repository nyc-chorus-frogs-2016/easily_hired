class ApplicationsController < ApplicationController

  def create
    Application.create(is_selected: false, applicant_id: current_user.id, job_post_id: params[:job_post_id])
    redirect_to job_posts_path
  end


end
