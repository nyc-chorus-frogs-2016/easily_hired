class CreateJobPostsTags < ActiveRecord::Migration
  def change
    create_table :job_posts_tags do |t|
      t.integer :tag_id
      t.integer :job_post_id
    end
  end
end
