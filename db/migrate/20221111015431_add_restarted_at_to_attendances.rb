class AddRestartedAtToAttendances < ActiveRecord::Migration[5.1]
  def change
    add_column :attendances, :restarted_at, :datetime
    add_column :attendances, :refinished_at, :datetime
    add_column :attendances, :overwork_end_time, :time
    add_column :attendances, :next_day, :boolean
    add_column :attendances, :overwork_next_day, :boolean
    add_column :attendances, :overwork_status, :string
    add_column :attendances, :overwork_approval_status, :string
    add_column :attendances, :attendance_change_status, :string
    add_column :attendances, :attendance_change_check_status, :string
    add_column :attendances, :one_month_approval_status, :string
    add_column :attendances, :one_month_approval_check_status, :string
    add_column :attendances, :process_content, :string
    add_column :attendances, :superior_confirmation, :string
    add_column :attendances, :superior_notice_confirmation, :string
    add_column :attendances, :superior_attendance_change_confirmation, :string
    add_column :attendances, :superior_attendance_change_approval_confirmation, :string
    add_column :attendances, :superior_month_notice_confirmation, :string
    add_column :attendances, :superior_month_approval_confirmation, :string
    add_column :attendances, :is_check, :boolean
    add_column :attendances, :change_check, :boolean
    add_column :attendances, :approval_check, :boolean
    add_column :attendances, :begin_started, :datetime
    add_column :attendances, :begin_finished, :datetime
  end
end
