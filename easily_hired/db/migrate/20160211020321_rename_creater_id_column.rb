class RenameCreaterIdColumn < ActiveRecord::Migration
  def change
    rename_column :job_posts, :creater_id, :creator_id
  end
end
