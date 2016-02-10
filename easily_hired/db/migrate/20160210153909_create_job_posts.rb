class CreateJobPosts < ActiveRecord::Migration
  def change
    create_table :job_posts do |t|
      t.string :title
      t.string :description
      t.string :location
      t.datetime :post_expiration_time
      t.boolean :is_active, default: true
      t.integer :creater_id

      t.timestamps null: false
    end
  end
end
