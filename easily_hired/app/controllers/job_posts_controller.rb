class JobPostsController < ApplicationController

  def index
    @job_posts = JobPost.all
  end

  def edit
    @job_post = JobPost.find_by(id: params[:id])
  end

  def update
    @job_post = JobPost.find_by(id: params[:id])
    @job_post.update(job_post_params)
    @job_post.tags = []
    params[:tags].split(" ").each do |tag|
      @job_post.tags << Tag.find_or_create_by(name: tag)
    end
    redirect_to job_post_path(@job_post)
  end

  def show
    @job_post = JobPost.find_by(id: params[:id])
  end

  def new
    @job_post = JobPost.new
  end

  def create
    @job_post = JobPost.new(job_post_params)
    @job_post.save
    params[:tags].split(" ").each do |tag|
      @job_post.tags << Tag.find_or_create_by(name: tag)
    end
    redirect_to job_posts_path
  end

  def created
    @created_job_posts = current_user.created_job_posts
  end

  def applied
    @applied_job_posts = current_user.applied_job_posts
  end

  def destroy
    @job_post = JobPost.find(params[:id])
    @job_post.destroy
    redirect_to job_posts_path
  end

  private

  def job_post_params
    params.require(:job_post).permit(:title, :description, :location, :is_active, :creator_id)
  end

end
