class CreateWatchListJobPosts < ActiveRecord::Migration
  def change
    create_table :watch_list_job_posts do |t|

      t.timestamps null: false
    end
  end
end
