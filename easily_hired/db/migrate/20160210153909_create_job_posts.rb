class CreateJobPosts < ActiveRecord::Migration
  def change
    create_table :job_posts do |t|

      t.timestamps null: false
    end
  end
end
