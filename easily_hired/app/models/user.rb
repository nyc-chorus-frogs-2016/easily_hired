class User < ActiveRecord::Base
  has_secure_password
  has_many :applications, foreign_key: :applicant_id
  has_many :watch_list_job_posts
end
