class AddRestartedAtToAttendances < ActiveRecord::Migration[5.1]
  def change
    add_column :attendances, :restarted_at, :datetime
    add_column :attendances, :refinished_at, :datetime
    add_column :attendances, :overwork_end_time, :time
    add_column :attendances, :next_day, :boolean
    add_column :attendances, :overwork_next_day, :boolean
  end
end
