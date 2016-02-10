class SessionsController < ApplicationController
  skip_before_action :ensure_current_user
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to job_posts_path
    else
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to job_posts_path
  end

end
