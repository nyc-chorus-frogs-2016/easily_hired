class Application < ActiveRecord::Base
  belongs_to :applicant, class_name: :user
  belongs_to :job_post
end
