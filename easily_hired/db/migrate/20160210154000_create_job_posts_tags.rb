class CreateJobPostsTags < ActiveRecord::Migration
  def change
    create_table :job_posts_tags do |t|

      t.timestamps null: false
    end
  end
end
