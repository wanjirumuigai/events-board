class CreateEventStaffs < ActiveRecord::Migration[6.1]
  def change
    create_table :event_staffs do |t|
      t.integer :supervisor_id
      t.integer :it_id
      t.integer :housekeeper_id
      t.string :catering_id
    end
  end
end
