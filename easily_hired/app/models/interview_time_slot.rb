class InterviewTimeSlot < ActiveRecord::Base
  belongs_to :job_post
  belongs_to :application
end
