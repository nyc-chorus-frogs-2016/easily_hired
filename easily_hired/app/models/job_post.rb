class JobPost < ActiveRecord::Base
  has_many :applications
  has_many :applicants, through: :applications
  has_many :job_posts_tags
  has_many :tags, through: :job_posts_tags
  has_many :interview_time_slots

end
