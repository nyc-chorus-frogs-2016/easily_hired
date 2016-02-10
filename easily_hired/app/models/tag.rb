class Tag < ActiveRecord::Base
  has_many :job_posts_tags
  has_many :job_posts, through: :job_posts_tags
end
