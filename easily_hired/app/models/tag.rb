class Tag < ActiveRecord::Base
  has_many :job_posts_tags, dependent: :destroy
  has_many :job_posts, through: :job_posts_tags
end
