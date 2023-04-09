class DeleteColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :event_staffs, :catering_id, :integer
  end
end
