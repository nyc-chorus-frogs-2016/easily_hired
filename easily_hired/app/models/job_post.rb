class JobPost < ActiveRecord::Base
  has_many :applications, dependent: :destroy
  has_many :applicants, through: :applications
  has_many :job_posts_tags, dependent: :destroy
  has_many :tags, through: :job_posts_tags
  has_many :interview_time_slots, dependent: :destroy

  def not_applied?(user_id)
    Application.where("applicant_id = ? AND job_post_id = ?", user_id, self.id).empty?
  end

  def creator?(user_id)
    self.creator_id == user_id
  end

  def tags_toS
    self.tags.map {|tag| tag.name}.join(" ")
  end

end
