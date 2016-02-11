class TagsController < ApplicationController

  def find
    if Tag.find_by(name: params[:search])
      @found_job_posts = Tag.find_by(name: params[:search]).job_posts
    else
      @found_job_posts = []
    end
  end

end
