class JobPostsTag < ActiveRecord::Base
  belongs_to :tag
  belongs_to :job_post
end
