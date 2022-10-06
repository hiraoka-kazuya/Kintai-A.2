class AddAdditionColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :designated_work_start_time, :detetime
    add_column :users, :designated_work_end_time, :detetime
    add_column :users, :uid, :integer
  end
end
