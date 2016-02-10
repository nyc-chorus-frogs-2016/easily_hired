class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.integer :job_post_id
      t.integer :applicant_id

      t.timestamps null: false
    end
  end
end
