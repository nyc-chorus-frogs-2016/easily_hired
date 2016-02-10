class CreateInterviewTimeSlots < ActiveRecord::Migration
  def change
    create_table :interview_time_slots do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :job_post_id
      t.integer :application_id

      t.timestamps null: false
    end
  end
end
