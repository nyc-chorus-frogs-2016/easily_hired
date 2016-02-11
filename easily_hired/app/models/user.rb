class User < ActiveRecord::Base
  has_secure_password
  has_many :applications, foreign_key: :applicant_id
  has_many :watch_list_job_posts
  has_many :created_job_posts, foreign_key: :creator_id, class_name: "JobPost"
  has_many :applied_job_posts, through: :applications, source: :job_post

end
