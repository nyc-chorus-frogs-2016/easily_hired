class JobPostsController < ApplicationController

  def index
    @job_posts = JobPost.all
  end

  def show
    @job_post = JobPost.find_by(id: params[:id])
  end

  def new
    @job_post = JobPost.new
  end

  def create
    @job_post = JobPost.new(job_post_params)
    if @job_post.save
      redirect_to job_posts_path
    end
  end


  private

  def job_post_params
    params.require(:job_post).permit(:title, :description, :location, :is_active)
  end

end
