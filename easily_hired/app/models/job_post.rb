class JobPost < ActiveRecord::Base
  has_many :applications
  has_many :applicants, through: :applications
  has_many :job_posts_tags
  has_many :tags, through: :job_posts_tags
  has_many :interview_time_slots

  def not_applied?(user_id)
    Application.where("applicant_id = ? AND job_post_id = ?", user_id, self.id).empty?
  end

  def creator?(user_id)
    self.creator_id == user_id
  end

end
